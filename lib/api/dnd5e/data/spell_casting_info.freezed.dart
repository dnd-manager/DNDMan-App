// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spell_casting_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpellCastingInfo _$SpellCastingInfoFromJson(Map<String, dynamic> json) {
  return _SpellCastingInfo.fromJson(json);
}

/// @nodoc
mixin _$SpellCastingInfo {
  String get name => throw _privateConstructorUsedError;
  List<String> get desc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpellCastingInfoCopyWith<SpellCastingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpellCastingInfoCopyWith<$Res> {
  factory $SpellCastingInfoCopyWith(
          SpellCastingInfo value, $Res Function(SpellCastingInfo) then) =
      _$SpellCastingInfoCopyWithImpl<$Res>;
  $Res call({String name, List<String> desc});
}

/// @nodoc
class _$SpellCastingInfoCopyWithImpl<$Res>
    implements $SpellCastingInfoCopyWith<$Res> {
  _$SpellCastingInfoCopyWithImpl(this._value, this._then);

  final SpellCastingInfo _value;
  // ignore: unused_field
  final $Res Function(SpellCastingInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$SpellCastingInfoCopyWith<$Res>
    implements $SpellCastingInfoCopyWith<$Res> {
  factory _$SpellCastingInfoCopyWith(
          _SpellCastingInfo value, $Res Function(_SpellCastingInfo) then) =
      __$SpellCastingInfoCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> desc});
}

/// @nodoc
class __$SpellCastingInfoCopyWithImpl<$Res>
    extends _$SpellCastingInfoCopyWithImpl<$Res>
    implements _$SpellCastingInfoCopyWith<$Res> {
  __$SpellCastingInfoCopyWithImpl(
      _SpellCastingInfo _value, $Res Function(_SpellCastingInfo) _then)
      : super(_value, (v) => _then(v as _SpellCastingInfo));

  @override
  _SpellCastingInfo get _value => super._value as _SpellCastingInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? desc = freezed,
  }) {
    return _then(_SpellCastingInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SpellCastingInfo implements _SpellCastingInfo {
  const _$_SpellCastingInfo(
      {required this.name, required final List<String> desc})
      : _desc = desc;

  factory _$_SpellCastingInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SpellCastingInfoFromJson(json);

  @override
  final String name;
  final List<String> _desc;
  @override
  List<String> get desc {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desc);
  }

  @override
  String toString() {
    return 'SpellCastingInfo(name: $name, desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpellCastingInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.desc, desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc));

  @JsonKey(ignore: true)
  @override
  _$SpellCastingInfoCopyWith<_SpellCastingInfo> get copyWith =>
      __$SpellCastingInfoCopyWithImpl<_SpellCastingInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpellCastingInfoToJson(this);
  }
}

abstract class _SpellCastingInfo implements SpellCastingInfo {
  const factory _SpellCastingInfo(
      {required final String name,
      required final List<String> desc}) = _$_SpellCastingInfo;

  factory _SpellCastingInfo.fromJson(Map<String, dynamic> json) =
      _$_SpellCastingInfo.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get desc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpellCastingInfoCopyWith<_SpellCastingInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
