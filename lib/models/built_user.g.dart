// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltUser> _$builtUserSerializer = new _$BuiltUserSerializer();

class _$BuiltUserSerializer implements StructuredSerializer<BuiltUser> {
  @override
  final Iterable<Type> types = const [BuiltUser, _$BuiltUser];
  @override
  final String wireName = 'BuiltUser';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(BuiltAddress)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'website',
      serializers.serialize(object.website,
          specifiedType: const FullType(String)),
      'company',
      serializers.serialize(object.company,
          specifiedType: const FullType(BuiltCompany)),
    ];

    return result;
  }

  @override
  BuiltUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltAddress)) as BuiltAddress);
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company':
          result.company.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltCompany)) as BuiltCompany);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltUser extends BuiltUser {
  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final BuiltAddress address;
  @override
  final String phone;
  @override
  final String website;
  @override
  final BuiltCompany company;

  factory _$BuiltUser([void Function(BuiltUserBuilder) updates]) =>
      (new BuiltUserBuilder()..update(updates)).build();

  _$BuiltUser._(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'name');
    }
    if (username == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'username');
    }
    if (email == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'email');
    }
    if (address == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'address');
    }
    if (phone == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'phone');
    }
    if (website == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'website');
    }
    if (company == null) {
      throw new BuiltValueNullFieldError('BuiltUser', 'company');
    }
  }

  @override
  BuiltUser rebuild(void Function(BuiltUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserBuilder toBuilder() => new BuiltUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUser &&
        id == other.id &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        address == other.address &&
        phone == other.phone &&
        website == other.website &&
        company == other.company;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), name.hashCode),
                            username.hashCode),
                        email.hashCode),
                    address.hashCode),
                phone.hashCode),
            website.hashCode),
        company.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUser')
          ..add('id', id)
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('address', address)
          ..add('phone', phone)
          ..add('website', website)
          ..add('company', company))
        .toString();
  }
}

class BuiltUserBuilder implements Builder<BuiltUser, BuiltUserBuilder> {
  _$BuiltUser _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  BuiltAddressBuilder _address;
  BuiltAddressBuilder get address =>
      _$this._address ??= new BuiltAddressBuilder();
  set address(BuiltAddressBuilder address) => _$this._address = address;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  BuiltCompanyBuilder _company;
  BuiltCompanyBuilder get company =>
      _$this._company ??= new BuiltCompanyBuilder();
  set company(BuiltCompanyBuilder company) => _$this._company = company;

  BuiltUserBuilder();

  BuiltUserBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _username = _$v.username;
      _email = _$v.email;
      _address = _$v.address?.toBuilder();
      _phone = _$v.phone;
      _website = _$v.website;
      _company = _$v.company?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUser other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltUser;
  }

  @override
  void update(void Function(BuiltUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUser build() {
    _$BuiltUser _$result;
    try {
      _$result = _$v ??
          new _$BuiltUser._(
              id: id,
              name: name,
              username: username,
              email: email,
              address: address.build(),
              phone: phone,
              website: website,
              company: company.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        address.build();

        _$failedField = 'company';
        company.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
