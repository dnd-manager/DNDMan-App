// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'index_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndexObject _$IndexObjectFromJson(Map<String, dynamic> json) {
  return _IndexObject.fromJson(json);
}

/// @nodoc
mixin _$IndexObject {
  String get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndexObjectCopyWith<IndexObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndexObjectCopyWith<$Res> {
  factory $IndexObjectCopyWith(
          IndexObject value, $Res Function(IndexObject) then) =
      _$IndexObjectCopyWithImpl<$Res>;
  $Res call({String index, String name, String url});
}

/// @nodoc
class _$IndexObjectCopyWithImpl<$Res> implements $IndexObjectCopyWith<$Res> {
  _$IndexObjectCopyWithImpl(this._value, this._then);

  final IndexObject _value;
  // ignore: unused_field
  final $Res Function(IndexObject) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IndexObjectCopyWith<$Res>
    implements $IndexObjectCopyWith<$Res> {
  factory _$IndexObjectCopyWith(
          _IndexObject value, $Res Function(_IndexObject) then) =
      __$IndexObjectCopyWithImpl<$Res>;
  @override
  $Res call({String index, String name, String url});
}

/// @nodoc
class __$IndexObjectCopyWithImpl<$Res> extends _$IndexObjectCopyWithImpl<$Res>
    implements _$IndexObjectCopyWith<$Res> {
  __$IndexObjectCopyWithImpl(
      _IndexObject _value, $Res Function(_IndexObject) _then)
      : super(_value, (v) => _then(v as _IndexObject));

  @override
  _IndexObject get _value => super._value as _IndexObject;

  @override
  $Res call({
    Object? index = freezed,
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_IndexObject(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_IndexObject implements _IndexObject {
  const _$_IndexObject(
      {required this.index, required this.name, required this.url});

  factory _$_IndexObject.fromJson(Map<String, dynamic> json) =>
      _$$_IndexObjectFromJson(json);

  @override
  final String index;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'IndexObject(index: $index, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndexObject &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$IndexObjectCopyWith<_IndexObject> get copyWith =>
      __$IndexObjectCopyWithImpl<_IndexObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndexObjectToJson(this);
  }
}

abstract class _IndexObject implements IndexObject {
  const factory _IndexObject(
      {required final String index,
      required final String name,
      required final String url}) = _$_IndexObject;

  factory _IndexObject.fromJson(Map<String, dynamic> json) =
      _$_IndexObject.fromJson;

  @override
  String get index => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IndexObjectCopyWith<_IndexObject> get copyWith =>
      throw _privateConstructorUsedError;
}
