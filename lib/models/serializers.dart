library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'built_address.dart';
import 'built_company.dart';
import 'built_geo.dart';
import 'built_user.dart';

part 'serializers.g.dart';

@SerializersFor([
  BuiltAddress,
  BuiltCompany,
  BuiltGeo,
  BuiltUser,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
