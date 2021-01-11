library built_address;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'built_geo.dart';
import 'serializers.dart';

part 'built_address.g.dart';

/// Built value will use this class to generate the BuiltAddress class.
abstract class BuiltAddress
    implements Built<BuiltAddress, BuiltAddressBuilder> {
  String get street;
  String get suite;
  String get city;
  String get zipcode;
  BuiltGeo get geo;

  BuiltAddress._();

  factory BuiltAddress([void Function(BuiltAddressBuilder) updates]) =
      _$BuiltAddress;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltAddress.serializer, this));
  }

  static BuiltAddress fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltAddress.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltAddress> get serializer => _$builtAddressSerializer;
}
