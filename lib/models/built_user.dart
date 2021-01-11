library built_user;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'built_address.dart';
import 'built_company.dart';
import 'serializers.dart';

part 'built_user.g.dart';

/// Built value will use this class to generate the BuiltUser class.
///
/// All this boilerplate code can be generated using the vscode extension:
///
/// https://marketplace.visualstudio.com/items?itemName=yongzhenlow.dart-built-value-snippets
///
/// "bvd" for imports.
/// "bvts" for the class with serializers.
abstract class BuiltUser implements Built<BuiltUser, BuiltUserBuilder> {
  // Manually add the fields.
  int get id;
  String get name;
  String get username;
  String get email;
  BuiltAddress get address;
  String get phone;
  String get website;
  BuiltCompany get company;

  BuiltUser._();

  // Both factory constructors below are equivalent.
  // factory BuiltUser([void Function(BuiltUserBuilder) updates]) = _$BuiltUser;
  factory BuiltUser([updates(BuiltUserBuilder b)]) = _$BuiltUser;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltUser.serializer, this));
  }

  static BuiltUser fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltUser.serializer, json.decode(jsonString));
  }

  // The generator has a bug here, generates with a capital first letter.
  // static Serializer<BuiltUser> get serializer => _$BuiltUserSerializer;
  static Serializer<BuiltUser> get serializer => _$builtUserSerializer;
}
