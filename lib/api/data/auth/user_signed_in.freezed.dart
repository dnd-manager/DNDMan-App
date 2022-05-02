// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_signed_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSignedIn _$UserSignedInFromJson(Map<String, dynamic> json) {
  return _UserSignedIn.fromJson(json);
}

/// @nodoc
mixin _$UserSignedIn {
  String get session => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignedInCopyWith<UserSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignedInCopyWith<$Res> {
  factory $UserSignedInCopyWith(
          UserSignedIn value, $Res Function(UserSignedIn) then) =
      _$UserSignedInCopyWithImpl<$Res>;
  $Res call({String session, String user});
}

/// @nodoc
class _$UserSignedInCopyWithImpl<$Res> implements $UserSignedInCopyWith<$Res> {
  _$UserSignedInCopyWithImpl(this._value, this._then);

  final UserSignedIn _value;
  // ignore: unused_field
  final $Res Function(UserSignedIn) _then;

  @override
  $Res call({
    Object? session = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserSignedInCopyWith<$Res>
    implements $UserSignedInCopyWith<$Res> {
  factory _$UserSignedInCopyWith(
          _UserSignedIn value, $Res Function(_UserSignedIn) then) =
      __$UserSignedInCopyWithImpl<$Res>;
  @override
  $Res call({String session, String user});
}

/// @nodoc
class __$UserSignedInCopyWithImpl<$Res> extends _$UserSignedInCopyWithImpl<$Res>
    implements _$UserSignedInCopyWith<$Res> {
  __$UserSignedInCopyWithImpl(
      _UserSignedIn _value, $Res Function(_UserSignedIn) _then)
      : super(_value, (v) => _then(v as _UserSignedIn));

  @override
  _UserSignedIn get _value => super._value as _UserSignedIn;

  @override
  $Res call({
    Object? session = freezed,
    Object? user = freezed,
  }) {
    return _then(_UserSignedIn(
      session: session == freezed
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserSignedIn implements _UserSignedIn {
  const _$_UserSignedIn({required this.session, required this.user});

  factory _$_UserSignedIn.fromJson(Map<String, dynamic> json) =>
      _$$_UserSignedInFromJson(json);

  @override
  final String session;
  @override
  final String user;

  @override
  String toString() {
    return 'UserSignedIn(session: $session, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSignedIn &&
            const DeepCollectionEquality().equals(other.session, session) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(session),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$UserSignedInCopyWith<_UserSignedIn> get copyWith =>
      __$UserSignedInCopyWithImpl<_UserSignedIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSignedInToJson(this);
  }
}

abstract class _UserSignedIn implements UserSignedIn {
  const factory _UserSignedIn(
      {required final String session,
      required final String user}) = _$_UserSignedIn;

  factory _UserSignedIn.fromJson(Map<String, dynamic> json) =
      _$_UserSignedIn.fromJson;

  @override
  String get session => throw _privateConstructorUsedError;
  @override
  String get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSignedInCopyWith<_UserSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}
