// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index_obj_choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndexObjectChoice<T> _$IndexObjectChoiceFromJson<T>(Map<String, dynamic> json) {
  return _IndexObjectChoice<T>.fromJson(json);
}

/// @nodoc
mixin _$IndexObjectChoice<T> {
  int get choose => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<IndexObject> get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexObjectChoiceCopyWith<T, IndexObjectChoice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexObjectChoiceCopyWith<T, $Res> {
  factory $IndexObjectChoiceCopyWith(IndexObjectChoice<T> value,
          $Res Function(IndexObjectChoice<T>) then) =
      _$IndexObjectChoiceCopyWithImpl<T, $Res>;
  $Res call({int choose, String type, List<IndexObject> from});
}

/// @nodoc
class _$IndexObjectChoiceCopyWithImpl<T, $Res>
    implements $IndexObjectChoiceCopyWith<T, $Res> {
  _$IndexObjectChoiceCopyWithImpl(this._value, this._then);

  final IndexObjectChoice<T> _value;
  // ignore: unused_field
  final $Res Function(IndexObjectChoice<T>) _then;

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
              as List<IndexObject>,
    ));
  }
}

/// @nodoc
abstract class _$IndexObjectChoiceCopyWith<T, $Res>
    implements $IndexObjectChoiceCopyWith<T, $Res> {
  factory _$IndexObjectChoiceCopyWith(_IndexObjectChoice<T> value,
          $Res Function(_IndexObjectChoice<T>) then) =
      __$IndexObjectChoiceCopyWithImpl<T, $Res>;
  @override
  $Res call({int choose, String type, List<IndexObject> from});
}

/// @nodoc
class __$IndexObjectChoiceCopyWithImpl<T, $Res>
    extends _$IndexObjectChoiceCopyWithImpl<T, $Res>
    implements _$IndexObjectChoiceCopyWith<T, $Res> {
  __$IndexObjectChoiceCopyWithImpl(
      _IndexObjectChoice<T> _value, $Res Function(_IndexObjectChoice<T>) _then)
      : super(_value, (v) => _then(v as _IndexObjectChoice<T>));

  @override
  _IndexObjectChoice<T> get _value => super._value as _IndexObjectChoice<T>;

  @override
  $Res call({
    Object? choose = freezed,
    Object? type = freezed,
    Object? from = freezed,
  }) {
    return _then(_IndexObjectChoice<T>(
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
              as List<IndexObject>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IndexObjectChoice<T> implements _IndexObjectChoice<T> {
  const _$_IndexObjectChoice(
      {required this.choose,
      required this.type,
      required final List<IndexObject> from})
      : _from = from;

  factory _$_IndexObjectChoice.fromJson(Map<String, dynamic> json) =>
      _$$_IndexObjectChoiceFromJson(json);

  @override
  final int choose;
  @override
  final String type;
  final List<IndexObject> _from;
  @override
  List<IndexObject> get from {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_from);
  }

  @override
  String toString() {
    return 'IndexObjectChoice<$T>(choose: $choose, type: $type, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndexObjectChoice<T> &&
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
  _$IndexObjectChoiceCopyWith<T, _IndexObjectChoice<T>> get copyWith =>
      __$IndexObjectChoiceCopyWithImpl<T, _IndexObjectChoice<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndexObjectChoiceToJson(this);
  }
}

abstract class _IndexObjectChoice<T> implements IndexObjectChoice<T> {
  const factory _IndexObjectChoice(
      {required final int choose,
      required final String type,
      required final List<IndexObject> from}) = _$_IndexObjectChoice<T>;

  factory _IndexObjectChoice.fromJson(Map<String, dynamic> json) =
      _$_IndexObjectChoice<T>.fromJson;

  @override
  int get choose => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get from => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IndexObjectChoiceCopyWith<T, _IndexObjectChoice<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
