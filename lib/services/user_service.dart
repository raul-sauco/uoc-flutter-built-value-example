import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/built_user.dart';
import '../models/serializers.dart';

/// Manages fetching user data.
class UserService {
  // This method requests data from the mock API and returns it.
  static Future<List<BuiltUser>> getUsers() async {
    var response = await http.get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          .map((userJson) =>
              serializers.deserializeWith(BuiltUser.serializer, userJson))
          .toList();
    } else {
      throw Exception("Unexpected response code ${response.statusCode}");
    }
  }
}
