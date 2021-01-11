library built_geo;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'built_geo.g.dart';

/// Built value will use this class to generate the BuiltGeo class.
abstract class BuiltGeo implements Built<BuiltGeo, BuiltGeoBuilder> {
  String get lat;
  String get lng;

  BuiltGeo._();

  factory BuiltGeo([void Function(BuiltGeoBuilder) updates]) = _$BuiltGeo;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltGeo.serializer, this));
  }

  static BuiltGeo fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltGeo.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltGeo> get serializer => _$builtGeoSerializer;
}
