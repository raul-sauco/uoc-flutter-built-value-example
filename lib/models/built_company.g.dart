// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_company;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltCompany> _$builtCompanySerializer =
    new _$BuiltCompanySerializer();

class _$BuiltCompanySerializer implements StructuredSerializer<BuiltCompany> {
  @override
  final Iterable<Type> types = const [BuiltCompany, _$BuiltCompany];
  @override
  final String wireName = 'BuiltCompany';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltCompany object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'catchPhrase',
      serializers.serialize(object.catchPhrase,
          specifiedType: const FullType(String)),
      'bs',
      serializers.serialize(object.bs, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltCompany deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltCompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'catchPhrase':
          result.catchPhrase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bs':
          result.bs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltCompany extends BuiltCompany {
  @override
  final String name;
  @override
  final String catchPhrase;
  @override
  final String bs;

  factory _$BuiltCompany([void Function(BuiltCompanyBuilder) updates]) =>
      (new BuiltCompanyBuilder()..update(updates)).build();

  _$BuiltCompany._({this.name, this.catchPhrase, this.bs}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltCompany', 'name');
    }
    if (catchPhrase == null) {
      throw new BuiltValueNullFieldError('BuiltCompany', 'catchPhrase');
    }
    if (bs == null) {
      throw new BuiltValueNullFieldError('BuiltCompany', 'bs');
    }
  }

  @override
  BuiltCompany rebuild(void Function(BuiltCompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCompanyBuilder toBuilder() => new BuiltCompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCompany &&
        name == other.name &&
        catchPhrase == other.catchPhrase &&
        bs == other.bs;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), catchPhrase.hashCode), bs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltCompany')
          ..add('name', name)
          ..add('catchPhrase', catchPhrase)
          ..add('bs', bs))
        .toString();
  }
}

class BuiltCompanyBuilder
    implements Builder<BuiltCompany, BuiltCompanyBuilder> {
  _$BuiltCompany _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _catchPhrase;
  String get catchPhrase => _$this._catchPhrase;
  set catchPhrase(String catchPhrase) => _$this._catchPhrase = catchPhrase;

  String _bs;
  String get bs => _$this._bs;
  set bs(String bs) => _$this._bs = bs;

  BuiltCompanyBuilder();

  BuiltCompanyBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _catchPhrase = _$v.catchPhrase;
      _bs = _$v.bs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltCompany other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltCompany;
  }

  @override
  void update(void Function(BuiltCompanyBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltCompany build() {
    final _$result = _$v ??
        new _$BuiltCompany._(name: name, catchPhrase: catchPhrase, bs: bs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
