// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Choice<T> _$ChoiceFromJson<T>(Map<String, dynamic> json) {
  return _Choice<T>.fromJson(json);
}

/// @nodoc
mixin _$Choice<T> {
  int get choose => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<T> get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceCopyWith<T, Choice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<T, $Res> {
  factory $ChoiceCopyWith(Choice<T> value, $Res Function(Choice<T>) then) =
      _$ChoiceCopyWithImpl<T, $Res>;
  $Res call({int choose, String type, List<T> from});
}

/// @nodoc
class _$ChoiceCopyWithImpl<T, $Res> implements $ChoiceCopyWith<T, $Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  final Choice<T> _value;
  // ignore: unused_field
  final $Res Function(Choice<T>) _then;

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
              as List<T>,
    ));
  }
}

/// @nodoc
abstract class _$ChoiceCopyWith<T, $Res> implements $ChoiceCopyWith<T, $Res> {
  factory _$ChoiceCopyWith(_Choice<T> value, $Res Function(_Choice<T>) then) =
      __$ChoiceCopyWithImpl<T, $Res>;
  @override
  $Res call({int choose, String type, List<T> from});
}

/// @nodoc
class __$ChoiceCopyWithImpl<T, $Res> extends _$ChoiceCopyWithImpl<T, $Res>
    implements _$ChoiceCopyWith<T, $Res> {
  __$ChoiceCopyWithImpl(_Choice<T> _value, $Res Function(_Choice<T>) _then)
      : super(_value, (v) => _then(v as _Choice<T>));

  @override
  _Choice<T> get _value => super._value as _Choice<T>;

  @override
  $Res call({
    Object? choose = freezed,
    Object? type = freezed,
    Object? from = freezed,
  }) {
    return _then(_Choice<T>(
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
              as List<T>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class _$_Choice<T> implements _Choice<T> {
  const _$_Choice(
      {required this.choose, required this.type, required final List<T> from})
      : _from = from;

  factory _$_Choice.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceFromJson(json);

  @override
  final int choose;
  @override
  final String type;
  final List<T> _from;
  @override
  List<T> get from {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_from);
  }

  @override
  String toString() {
    return 'Choice<$T>(choose: $choose, type: $type, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Choice<T> &&
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
  _$ChoiceCopyWith<T, _Choice<T>> get copyWith =>
      __$ChoiceCopyWithImpl<T, _Choice<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceToJson(this);
  }
}

abstract class _Choice<T> implements Choice<T> {
  const factory _Choice(
      {required final int choose,
      required final String type,
      required final List<T> from}) = _$_Choice<T>;

  factory _Choice.fromJson(Map<String, dynamic> json) = _$_Choice<T>.fromJson;

  @override
  int get choose => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<T> get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChoiceCopyWith<T, _Choice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
