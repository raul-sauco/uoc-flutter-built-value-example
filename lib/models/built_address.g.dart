// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_address;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltAddress> _$builtAddressSerializer =
    new _$BuiltAddressSerializer();

class _$BuiltAddressSerializer implements StructuredSerializer<BuiltAddress> {
  @override
  final Iterable<Type> types = const [BuiltAddress, _$BuiltAddress];
  @override
  final String wireName = 'BuiltAddress';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltAddress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
      'suite',
      serializers.serialize(object.suite,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'zipcode',
      serializers.serialize(object.zipcode,
          specifiedType: const FullType(String)),
      'geo',
      serializers.serialize(object.geo,
          specifiedType: const FullType(BuiltGeo)),
    ];

    return result;
  }

  @override
  BuiltAddress deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltAddressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suite':
          result.suite = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zipcode':
          result.zipcode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'geo':
          result.geo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltGeo)) as BuiltGeo);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltAddress extends BuiltAddress {
  @override
  final String street;
  @override
  final String suite;
  @override
  final String city;
  @override
  final String zipcode;
  @override
  final BuiltGeo geo;

  factory _$BuiltAddress([void Function(BuiltAddressBuilder) updates]) =>
      (new BuiltAddressBuilder()..update(updates)).build();

  _$BuiltAddress._({this.street, this.suite, this.city, this.zipcode, this.geo})
      : super._() {
    if (street == null) {
      throw new BuiltValueNullFieldError('BuiltAddress', 'street');
    }
    if (suite == null) {
      throw new BuiltValueNullFieldError('BuiltAddress', 'suite');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('BuiltAddress', 'city');
    }
    if (zipcode == null) {
      throw new BuiltValueNullFieldError('BuiltAddress', 'zipcode');
    }
    if (geo == null) {
      throw new BuiltValueNullFieldError('BuiltAddress', 'geo');
    }
  }

  @override
  BuiltAddress rebuild(void Function(BuiltAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltAddressBuilder toBuilder() => new BuiltAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltAddress &&
        street == other.street &&
        suite == other.suite &&
        city == other.city &&
        zipcode == other.zipcode &&
        geo == other.geo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, street.hashCode), suite.hashCode), city.hashCode),
            zipcode.hashCode),
        geo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltAddress')
          ..add('street', street)
          ..add('suite', suite)
          ..add('city', city)
          ..add('zipcode', zipcode)
          ..add('geo', geo))
        .toString();
  }
}

class BuiltAddressBuilder
    implements Builder<BuiltAddress, BuiltAddressBuilder> {
  _$BuiltAddress _$v;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _suite;
  String get suite => _$this._suite;
  set suite(String suite) => _$this._suite = suite;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _zipcode;
  String get zipcode => _$this._zipcode;
  set zipcode(String zipcode) => _$this._zipcode = zipcode;

  BuiltGeoBuilder _geo;
  BuiltGeoBuilder get geo => _$this._geo ??= new BuiltGeoBuilder();
  set geo(BuiltGeoBuilder geo) => _$this._geo = geo;

  BuiltAddressBuilder();

  BuiltAddressBuilder get _$this {
    if (_$v != null) {
      _street = _$v.street;
      _suite = _$v.suite;
      _city = _$v.city;
      _zipcode = _$v.zipcode;
      _geo = _$v.geo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltAddress other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltAddress;
  }

  @override
  void update(void Function(BuiltAddressBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltAddress build() {
    _$BuiltAddress _$result;
    try {
      _$result = _$v ??
          new _$BuiltAddress._(
              street: street,
              suite: suite,
              city: city,
              zipcode: zipcode,
              geo: geo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'geo';
        geo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltAddress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
