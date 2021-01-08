library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:bv/models/built_vehicle.dart';

part 'serializers.g.dart';

@SerializersFor([
  BuiltVehicle,
  VehicleType
])

final Serializers serializers = 
(_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
