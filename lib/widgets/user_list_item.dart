import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/built_address.dart';
import '../models/built_user.dart';

/// Renders a list item using user data.
class UserListItem extends StatelessWidget {
  final BuiltUser user;

  UserListItem({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          children: [
            getUserAvatar(user),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getUsername(user),
                SizedBox(height: 8),
                getUserAddress(user.address),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Generate the username widget.
Widget getUsername(user) {
  return Text(
    user.name,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      // w600 looks slightly better than "bold"
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  );
}

// Generate the user avatar widget.
Widget getUserAvatar(BuiltUser user) {
  const int _size = 60;
  return SizedBox(
    width: _size.toDouble(),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(_size / 2),
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: 'https://placeimg.com/60/60/people?${user.id}',
      ),
    ),
  );
}

// Generate the address widget.
Widget getUserAddress(BuiltAddress address) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('${address.street}, ${address.suite}'),
      Text('${address.city}. ${address.zipcode}'),
    ],
  );
}
