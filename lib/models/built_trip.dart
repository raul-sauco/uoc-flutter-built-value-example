library built_trip;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

part 'built_trip.g.dart';

abstract class BuiltTrip implements Built<BuiltTrip, BuiltTripBuilder> {
  // Fields
  double get id;

  BuiltTrip._();

  factory BuiltTrip([void Function(BuiltTripBuilder) updates]) = _$BuiltTrip;
}
