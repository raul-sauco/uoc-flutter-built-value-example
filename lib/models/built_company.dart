library built_company;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'built_company.g.dart';

/// Built value will use this class to generate the BuiltCompany class.
abstract class BuiltCompany
    implements Built<BuiltCompany, BuiltCompanyBuilder> {
  String get name;
  String get catchPhrase;
  String get bs;

  BuiltCompany._();

  factory BuiltCompany([void Function(BuiltCompanyBuilder) updates]) =
      _$BuiltCompany;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltCompany.serializer, this));
  }

  static BuiltCompany fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltCompany.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltCompany> get serializer => _$builtCompanySerializer;
}
