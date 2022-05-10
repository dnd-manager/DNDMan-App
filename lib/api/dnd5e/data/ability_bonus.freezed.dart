// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ability_bonus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityBonus _$AbilityBonusFromJson(Map<String, dynamic> json) {
  return _AbilityBonus.fromJson(json);
}

/// @nodoc
mixin _$AbilityBonus {
  IndexObject get ability_score => throw _privateConstructorUsedError;
  int get bonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityBonusCopyWith<AbilityBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityBonusCopyWith<$Res> {
  factory $AbilityBonusCopyWith(
          AbilityBonus value, $Res Function(AbilityBonus) then) =
      _$AbilityBonusCopyWithImpl<$Res>;
  $Res call({IndexObject ability_score, int bonus});

  $IndexObjectCopyWith<$Res> get ability_score;
}

/// @nodoc
class _$AbilityBonusCopyWithImpl<$Res> implements $AbilityBonusCopyWith<$Res> {
  _$AbilityBonusCopyWithImpl(this._value, this._then);

  final AbilityBonus _value;
  // ignore: unused_field
  final $Res Function(AbilityBonus) _then;

  @override
  $Res call({
    Object? ability_score = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_value.copyWith(
      ability_score: ability_score == freezed
          ? _value.ability_score
          : ability_score // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $IndexObjectCopyWith<$Res> get ability_score {
    return $IndexObjectCopyWith<$Res>(_value.ability_score, (value) {
      return _then(_value.copyWith(ability_score: value));
    });
  }
}

/// @nodoc
abstract class _$AbilityBonusCopyWith<$Res>
    implements $AbilityBonusCopyWith<$Res> {
  factory _$AbilityBonusCopyWith(
          _AbilityBonus value, $Res Function(_AbilityBonus) then) =
      __$AbilityBonusCopyWithImpl<$Res>;
  @override
  $Res call({IndexObject ability_score, int bonus});

  @override
  $IndexObjectCopyWith<$Res> get ability_score;
}

/// @nodoc
class __$AbilityBonusCopyWithImpl<$Res> extends _$AbilityBonusCopyWithImpl<$Res>
    implements _$AbilityBonusCopyWith<$Res> {
  __$AbilityBonusCopyWithImpl(
      _AbilityBonus _value, $Res Function(_AbilityBonus) _then)
      : super(_value, (v) => _then(v as _AbilityBonus));

  @override
  _AbilityBonus get _value => super._value as _AbilityBonus;

  @override
  $Res call({
    Object? ability_score = freezed,
    Object? bonus = freezed,
  }) {
    return _then(_AbilityBonus(
      ability_score: ability_score == freezed
          ? _value.ability_score
          : ability_score // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      bonus: bonus == freezed
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AbilityBonus implements _AbilityBonus {
  const _$_AbilityBonus({required this.ability_score, required this.bonus});

  factory _$_AbilityBonus.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityBonusFromJson(json);

  @override
  final IndexObject ability_score;
  @override
  final int bonus;

  @override
  String toString() {
    return 'AbilityBonus(ability_score: $ability_score, bonus: $bonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbilityBonus &&
            const DeepCollectionEquality()
                .equals(other.ability_score, ability_score) &&
            const DeepCollectionEquality().equals(other.bonus, bonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ability_score),
      const DeepCollectionEquality().hash(bonus));

  @JsonKey(ignore: true)
  @override
  _$AbilityBonusCopyWith<_AbilityBonus> get copyWith =>
      __$AbilityBonusCopyWithImpl<_AbilityBonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityBonusToJson(this);
  }
}

abstract class _AbilityBonus implements AbilityBonus {
  const factory _AbilityBonus(
      {required final IndexObject ability_score,
      required final int bonus}) = _$_AbilityBonus;

  factory _AbilityBonus.fromJson(Map<String, dynamic> json) =
      _$_AbilityBonus.fromJson;

  @override
  IndexObject get ability_score => throw _privateConstructorUsedError;
  @override
  int get bonus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbilityBonusCopyWith<_AbilityBonus> get copyWith =>
      throw _privateConstructorUsedError;
}
