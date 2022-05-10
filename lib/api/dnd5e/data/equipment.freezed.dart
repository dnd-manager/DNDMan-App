// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Equipment _$EquipmentFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$Equipment {
  IndexObject get equipment => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentCopyWith<Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) then) =
      _$EquipmentCopyWithImpl<$Res>;
  $Res call({IndexObject equipment, int quantity});

  $IndexObjectCopyWith<$Res> get equipment;
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res> implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._value, this._then);

  final Equipment _value;
  // ignore: unused_field
  final $Res Function(Equipment) _then;

  @override
  $Res call({
    Object? equipment = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $IndexObjectCopyWith<$Res> get equipment {
    return $IndexObjectCopyWith<$Res>(_value.equipment, (value) {
      return _then(_value.copyWith(equipment: value));
    });
  }
}

/// @nodoc
abstract class _$EquipmentCopyWith<$Res> implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(
          _Equipment value, $Res Function(_Equipment) then) =
      __$EquipmentCopyWithImpl<$Res>;
  @override
  $Res call({IndexObject equipment, int quantity});

  @override
  $IndexObjectCopyWith<$Res> get equipment;
}

/// @nodoc
class __$EquipmentCopyWithImpl<$Res> extends _$EquipmentCopyWithImpl<$Res>
    implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(_Equipment _value, $Res Function(_Equipment) _then)
      : super(_value, (v) => _then(v as _Equipment));

  @override
  _Equipment get _value => super._value as _Equipment;

  @override
  $Res call({
    Object? equipment = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_Equipment(
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Equipment implements _Equipment {
  const _$_Equipment({required this.equipment, required this.quantity});

  factory _$_Equipment.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentFromJson(json);

  @override
  final IndexObject equipment;
  @override
  final int quantity;

  @override
  String toString() {
    return 'Equipment(equipment: $equipment, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Equipment &&
            const DeepCollectionEquality().equals(other.equipment, equipment) &&
            const DeepCollectionEquality().equals(other.quantity, quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(equipment),
      const DeepCollectionEquality().hash(quantity));

  @JsonKey(ignore: true)
  @override
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentToJson(this);
  }
}

abstract class _Equipment implements Equipment {
  const factory _Equipment(
      {required final IndexObject equipment,
      required final int quantity}) = _$_Equipment;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$_Equipment.fromJson;

  @override
  IndexObject get equipment => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}
