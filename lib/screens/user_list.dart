import 'package:flutter/material.dart';

import '../models/built_user.dart';
import '../widgets/user_list_item.dart';

/// Displays a list of users.
class UserListScreen extends StatelessWidget {
  final List<BuiltUser> users;

  UserListScreen({@required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return UserListItem(user: users.elementAt(index));
        });
  }
}
