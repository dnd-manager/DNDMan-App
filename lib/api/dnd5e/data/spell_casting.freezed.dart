// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spell_casting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpellCasting _$SpellCastingFromJson(Map<String, dynamic> json) {
  return _SpellCasting.fromJson(json);
}

/// @nodoc
mixin _$SpellCasting {
  int get level => throw _privateConstructorUsedError;
  IndexObject get spellcasting_ability => throw _privateConstructorUsedError;
  List<SpellCastingInfo> get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellCastingCopyWith<SpellCasting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellCastingCopyWith<$Res> {
  factory $SpellCastingCopyWith(
          SpellCasting value, $Res Function(SpellCasting) then) =
      _$SpellCastingCopyWithImpl<$Res>;
  $Res call(
      {int level,
      IndexObject spellcasting_ability,
      List<SpellCastingInfo> info});

  $IndexObjectCopyWith<$Res> get spellcasting_ability;
}

/// @nodoc
class _$SpellCastingCopyWithImpl<$Res> implements $SpellCastingCopyWith<$Res> {
  _$SpellCastingCopyWithImpl(this._value, this._then);

  final SpellCasting _value;
  // ignore: unused_field
  final $Res Function(SpellCasting) _then;

  @override
  $Res call({
    Object? level = freezed,
    Object? spellcasting_ability = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      spellcasting_ability: spellcasting_ability == freezed
          ? _value.spellcasting_ability
          : spellcasting_ability // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<SpellCastingInfo>,
    ));
  }

  @override
  $IndexObjectCopyWith<$Res> get spellcasting_ability {
    return $IndexObjectCopyWith<$Res>(_value.spellcasting_ability, (value) {
      return _then(_value.copyWith(spellcasting_ability: value));
    });
  }
}

/// @nodoc
abstract class _$SpellCastingCopyWith<$Res>
    implements $SpellCastingCopyWith<$Res> {
  factory _$SpellCastingCopyWith(
          _SpellCasting value, $Res Function(_SpellCasting) then) =
      __$SpellCastingCopyWithImpl<$Res>;
  @override
  $Res call(
      {int level,
      IndexObject spellcasting_ability,
      List<SpellCastingInfo> info});

  @override
  $IndexObjectCopyWith<$Res> get spellcasting_ability;
}

/// @nodoc
class __$SpellCastingCopyWithImpl<$Res> extends _$SpellCastingCopyWithImpl<$Res>
    implements _$SpellCastingCopyWith<$Res> {
  __$SpellCastingCopyWithImpl(
      _SpellCasting _value, $Res Function(_SpellCasting) _then)
      : super(_value, (v) => _then(v as _SpellCasting));

  @override
  _SpellCasting get _value => super._value as _SpellCasting;

  @override
  $Res call({
    Object? level = freezed,
    Object? spellcasting_ability = freezed,
    Object? info = freezed,
  }) {
    return _then(_SpellCasting(
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      spellcasting_ability: spellcasting_ability == freezed
          ? _value.spellcasting_ability
          : spellcasting_ability // ignore: cast_nullable_to_non_nullable
              as IndexObject,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<SpellCastingInfo>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SpellCasting implements _SpellCasting {
  const _$_SpellCasting(
      {required this.level,
      required this.spellcasting_ability,
      required final List<SpellCastingInfo> info})
      : _info = info;

  factory _$_SpellCasting.fromJson(Map<String, dynamic> json) =>
      _$$_SpellCastingFromJson(json);

  @override
  final int level;
  @override
  final IndexObject spellcasting_ability;
  final List<SpellCastingInfo> _info;
  @override
  List<SpellCastingInfo> get info {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  String toString() {
    return 'SpellCasting(level: $level, spellcasting_ability: $spellcasting_ability, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpellCasting &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality()
                .equals(other.spellcasting_ability, spellcasting_ability) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(spellcasting_ability),
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$SpellCastingCopyWith<_SpellCasting> get copyWith =>
      __$SpellCastingCopyWithImpl<_SpellCasting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpellCastingToJson(this);
  }
}

abstract class _SpellCasting implements SpellCasting {
  const factory _SpellCasting(
      {required final int level,
      required final IndexObject spellcasting_ability,
      required final List<SpellCastingInfo> info}) = _$_SpellCasting;

  factory _SpellCasting.fromJson(Map<String, dynamic> json) =
      _$_SpellCasting.fromJson;

  @override
  int get level => throw _privateConstructorUsedError;
  @override
  IndexObject get spellcasting_ability => throw _privateConstructorUsedError;
  @override
  List<SpellCastingInfo> get info => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpellCastingCopyWith<_SpellCasting> get copyWith =>
      throw _privateConstructorUsedError;
}
