import 'package:flutter/material.dart';

import 'services/user_service.dart';
import 'screens/user_list.dart';

// The package selected is built value
// https://pub.dev/packages/built_value
//
// On startup the app displays a screen with a welcome text and a button
// that allows users to request data. On button click the page state
// is updated to reflect the user action.
//
// Once the data is requested, the page switches to display a FutureBuilder
// widget. The FutureBuilder will display a loading progress indicator while
// loading and a list of users, or an error message, one the request completes.
//
// The project aim is to illustrate the simplicity of using Built Value to
// serialize, and deserialize, data obtained from an external source into
// Dart classes.
//
// After an initial setup, that can be simplified with the use of
// snippets, we only need to care about maintaining one line of code per
// attribute of data we are interested on. If the structure of our data
// changes at some point, we only need to modify one line of code to
// reflect the update and continue using our Flutter application.
//
// How to run the example:
// The generated classes are included inside the lib folder, it should be
// enough to flutter pub get and run the application.
//

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = 'Built Value Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Flag whether the user has requested already data.
  bool hasRequested = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: hasRequested
          ? FutureBuilder(
              future: UserService.getUsers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return UserListScreen(users: snapshot.data);
                  } else {
                    return Center(
                      child: Text(
                        "Done but no data",
                        style: TextStyle(fontSize: 24),
                      ),
                    );
                  }
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          // Below widget gets displayed on app load.
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello Built Value!',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Click the button to get data',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        hasRequested = true;
                      });
                    },
                    child: Text(
                      'Fetch users',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
