// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentChoice<T> _$EquipmentChoiceFromJson<T>(Map<String, dynamic> json) {
  return _EquipmentChoice<T>.fromJson(json);
}

/// @nodoc
mixin _$EquipmentChoice<T> {
  int get choose => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Equipment> get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentChoiceCopyWith<T, EquipmentChoice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentChoiceCopyWith<T, $Res> {
  factory $EquipmentChoiceCopyWith(
          EquipmentChoice<T> value, $Res Function(EquipmentChoice<T>) then) =
      _$EquipmentChoiceCopyWithImpl<T, $Res>;
  $Res call({int choose, String type, List<Equipment> from});
}

/// @nodoc
class _$EquipmentChoiceCopyWithImpl<T, $Res>
    implements $EquipmentChoiceCopyWith<T, $Res> {
  _$EquipmentChoiceCopyWithImpl(this._value, this._then);

  final EquipmentChoice<T> _value;
  // ignore: unused_field
  final $Res Function(EquipmentChoice<T>) _then;

  @override
  $Res call({
    Object? choose = freezed,
    Object? type = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      choose: choose == freezed
          ? _value.choose
          : choose // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
    ));
  }
}

/// @nodoc
abstract class _$EquipmentChoiceCopyWith<T, $Res>
    implements $EquipmentChoiceCopyWith<T, $Res> {
  factory _$EquipmentChoiceCopyWith(
          _EquipmentChoice<T> value, $Res Function(_EquipmentChoice<T>) then) =
      __$EquipmentChoiceCopyWithImpl<T, $Res>;
  @override
  $Res call({int choose, String type, List<Equipment> from});
}

/// @nodoc
class __$EquipmentChoiceCopyWithImpl<T, $Res>
    extends _$EquipmentChoiceCopyWithImpl<T, $Res>
    implements _$EquipmentChoiceCopyWith<T, $Res> {
  __$EquipmentChoiceCopyWithImpl(
      _EquipmentChoice<T> _value, $Res Function(_EquipmentChoice<T>) _then)
      : super(_value, (v) => _then(v as _EquipmentChoice<T>));

  @override
  _EquipmentChoice<T> get _value => super._value as _EquipmentChoice<T>;

  @override
  $Res call({
    Object? choose = freezed,
    Object? type = freezed,
    Object? from = freezed,
  }) {
    return _then(_EquipmentChoice<T>(
      choose: choose == freezed
          ? _value.choose
          : choose // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_EquipmentChoice<T> implements _EquipmentChoice<T> {
  const _$_EquipmentChoice(
      {required this.choose,
      required this.type,
      required final List<Equipment> from})
      : _from = from;

  factory _$_EquipmentChoice.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentChoiceFromJson(json);

  @override
  final int choose;
  @override
  final String type;
  final List<Equipment> _from;
  @override
  List<Equipment> get from {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_from);
  }

  @override
  String toString() {
    return 'EquipmentChoice<$T>(choose: $choose, type: $type, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EquipmentChoice<T> &&
            const DeepCollectionEquality().equals(other.choose, choose) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.from, from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choose),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(from));

  @JsonKey(ignore: true)
  @override
  _$EquipmentChoiceCopyWith<T, _EquipmentChoice<T>> get copyWith =>
      __$EquipmentChoiceCopyWithImpl<T, _EquipmentChoice<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentChoiceToJson(this);
  }
}

abstract class _EquipmentChoice<T> implements EquipmentChoice<T> {
  const factory _EquipmentChoice(
      {required final int choose,
      required final String type,
      required final List<Equipment> from}) = _$_EquipmentChoice<T>;

  factory _EquipmentChoice.fromJson(Map<String, dynamic> json) =
      _$_EquipmentChoice<T>.fromJson;

  @override
  int get choose => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<Equipment> get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EquipmentChoiceCopyWith<T, _EquipmentChoice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
