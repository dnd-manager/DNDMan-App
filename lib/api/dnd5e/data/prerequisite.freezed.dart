// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prerequisite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Prerequisite _$PrerequisiteFromJson(Map<String, dynamic> json) {
  return _Prerequisites.fromJson(json);
}

/// @nodoc
mixin _$Prerequisite {
  IndexObject get ability_score => throw _privateConstructorUsedError;
  int get minimum_score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrerequisiteCopyWith<Prerequisite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrerequisiteCopyWith<$Res> {
  factory $PrerequisiteCopyWith(
          Prerequisite value, $Res Function(Prerequisite) then) =
      _$PrerequisiteCopyWithImpl<$Res>;
  $Res call({IndexObject ability_score, int minimum_score});

  $IndexObjectCopyWith<$Res> get ability_score;
}

/// @nodoc
class _$PrerequisiteCopyWithImpl<$Res> implements $PrerequisiteCopyWith<$Res> {
  _$PrerequisiteCopyWithImpl(this._value, this._then);

  final Prerequisite _value;
  // ignore: unused_field
  final $Res Function(Prerequisite) _then;

  @override
  $Res call({
    Object? ability_score = freezed,
    Object? minimum_score = freezed,
  }) {
    return _then(_value.copyWith(
      ability_score: ability_score == freezed
          ? _value.ability_score
          : ability_score // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      minimum_score: minimum_score == freezed
          ? _value.minimum_score
          : minimum_score // ignore: cast_nullable_to_non_nullable
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
abstract class _$PrerequisitesCopyWith<$Res>
    implements $PrerequisiteCopyWith<$Res> {
  factory _$PrerequisitesCopyWith(
          _Prerequisites value, $Res Function(_Prerequisites) then) =
      __$PrerequisitesCopyWithImpl<$Res>;
  @override
  $Res call({IndexObject ability_score, int minimum_score});

  @override
  $IndexObjectCopyWith<$Res> get ability_score;
}

/// @nodoc
class __$PrerequisitesCopyWithImpl<$Res>
    extends _$PrerequisiteCopyWithImpl<$Res>
    implements _$PrerequisitesCopyWith<$Res> {
  __$PrerequisitesCopyWithImpl(
      _Prerequisites _value, $Res Function(_Prerequisites) _then)
      : super(_value, (v) => _then(v as _Prerequisites));

  @override
  _Prerequisites get _value => super._value as _Prerequisites;

  @override
  $Res call({
    Object? ability_score = freezed,
    Object? minimum_score = freezed,
  }) {
    return _then(_Prerequisites(
      ability_score: ability_score == freezed
          ? _value.ability_score
          : ability_score // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      minimum_score: minimum_score == freezed
          ? _value.minimum_score
          : minimum_score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Prerequisites implements _Prerequisites {
  const _$_Prerequisites(
      {required this.ability_score, required this.minimum_score});

  factory _$_Prerequisites.fromJson(Map<String, dynamic> json) =>
      _$$_PrerequisitesFromJson(json);

  @override
  final IndexObject ability_score;
  @override
  final int minimum_score;

  @override
  String toString() {
    return 'Prerequisite(ability_score: $ability_score, minimum_score: $minimum_score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Prerequisites &&
            const DeepCollectionEquality()
                .equals(other.ability_score, ability_score) &&
            const DeepCollectionEquality()
                .equals(other.minimum_score, minimum_score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ability_score),
      const DeepCollectionEquality().hash(minimum_score));

  @JsonKey(ignore: true)
  @override
  _$PrerequisitesCopyWith<_Prerequisites> get copyWith =>
      __$PrerequisitesCopyWithImpl<_Prerequisites>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrerequisitesToJson(this);
  }
}

abstract class _Prerequisites implements Prerequisite {
  const factory _Prerequisites(
      {required final IndexObject ability_score,
      required final int minimum_score}) = _$_Prerequisites;

  factory _Prerequisites.fromJson(Map<String, dynamic> json) =
      _$_Prerequisites.fromJson;

  @override
  IndexObject get ability_score => throw _privateConstructorUsedError;
  @override
  int get minimum_score => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrerequisitesCopyWith<_Prerequisites> get copyWith =>
      throw _privateConstructorUsedError;
}
