// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_trip;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuiltTrip extends BuiltTrip {
  @override
  final double id;

  factory _$BuiltTrip([void Function(BuiltTripBuilder) updates]) =>
      (new BuiltTripBuilder()..update(updates)).build();

  _$BuiltTrip._({this.id}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('BuiltTrip', 'id');
    }
  }

  @override
  BuiltTrip rebuild(void Function(BuiltTripBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltTripBuilder toBuilder() => new BuiltTripBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltTrip && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltTrip')..add('id', id)).toString();
  }
}

class BuiltTripBuilder implements Builder<BuiltTrip, BuiltTripBuilder> {
  _$BuiltTrip _$v;

  double _id;
  double get id => _$this._id;
  set id(double id) => _$this._id = id;

  BuiltTripBuilder();

  BuiltTripBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltTrip other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltTrip;
  }

  @override
  void update(void Function(BuiltTripBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltTrip build() {
    final _$result = _$v ?? new _$BuiltTrip._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
