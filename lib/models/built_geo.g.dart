// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_geo;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltGeo> _$builtGeoSerializer = new _$BuiltGeoSerializer();

class _$BuiltGeoSerializer implements StructuredSerializer<BuiltGeo> {
  @override
  final Iterable<Type> types = const [BuiltGeo, _$BuiltGeo];
  @override
  final String wireName = 'BuiltGeo';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltGeo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'lng',
      serializers.serialize(object.lng, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltGeo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltGeoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltGeo extends BuiltGeo {
  @override
  final String lat;
  @override
  final String lng;

  factory _$BuiltGeo([void Function(BuiltGeoBuilder) updates]) =>
      (new BuiltGeoBuilder()..update(updates)).build();

  _$BuiltGeo._({this.lat, this.lng}) : super._() {
    if (lat == null) {
      throw new BuiltValueNullFieldError('BuiltGeo', 'lat');
    }
    if (lng == null) {
      throw new BuiltValueNullFieldError('BuiltGeo', 'lng');
    }
  }

  @override
  BuiltGeo rebuild(void Function(BuiltGeoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltGeoBuilder toBuilder() => new BuiltGeoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltGeo && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lat.hashCode), lng.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltGeo')
          ..add('lat', lat)
          ..add('lng', lng))
        .toString();
  }
}

class BuiltGeoBuilder implements Builder<BuiltGeo, BuiltGeoBuilder> {
  _$BuiltGeo _$v;

  String _lat;
  String get lat => _$this._lat;
  set lat(String lat) => _$this._lat = lat;

  String _lng;
  String get lng => _$this._lng;
  set lng(String lng) => _$this._lng = lng;

  BuiltGeoBuilder();

  BuiltGeoBuilder get _$this {
    if (_$v != null) {
      _lat = _$v.lat;
      _lng = _$v.lng;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltGeo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltGeo;
  }

  @override
  void update(void Function(BuiltGeoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltGeo build() {
    final _$result = _$v ?? new _$BuiltGeo._(lat: lat, lng: lng);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
