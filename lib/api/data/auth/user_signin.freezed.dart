// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_signin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSigninRequest _$UserSigninRequestFromJson(Map<String, dynamic> json) {
  return _UserSigninRequest.fromJson(json);
}

/// @nodoc
mixin _$UserSigninRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSigninRequestCopyWith<UserSigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSigninRequestCopyWith<$Res> {
  factory $UserSigninRequestCopyWith(
          UserSigninRequest value, $Res Function(UserSigninRequest) then) =
      _$UserSigninRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$UserSigninRequestCopyWithImpl<$Res>
    implements $UserSigninRequestCopyWith<$Res> {
  _$UserSigninRequestCopyWithImpl(this._value, this._then);

  final UserSigninRequest _value;
  // ignore: unused_field
  final $Res Function(UserSigninRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserSigninRequestCopyWith<$Res>
    implements $UserSigninRequestCopyWith<$Res> {
  factory _$UserSigninRequestCopyWith(
          _UserSigninRequest value, $Res Function(_UserSigninRequest) then) =
      __$UserSigninRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$UserSigninRequestCopyWithImpl<$Res>
    extends _$UserSigninRequestCopyWithImpl<$Res>
    implements _$UserSigninRequestCopyWith<$Res> {
  __$UserSigninRequestCopyWithImpl(
      _UserSigninRequest _value, $Res Function(_UserSigninRequest) _then)
      : super(_value, (v) => _then(v as _UserSigninRequest));

  @override
  _UserSigninRequest get _value => super._value as _UserSigninRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_UserSigninRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserSigninRequest implements _UserSigninRequest {
  const _$_UserSigninRequest({required this.email, required this.password});

  factory _$_UserSigninRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UserSigninRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserSigninRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserSigninRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$UserSigninRequestCopyWith<_UserSigninRequest> get copyWith =>
      __$UserSigninRequestCopyWithImpl<_UserSigninRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSigninRequestToJson(this);
  }
}

abstract class _UserSigninRequest implements UserSigninRequest {
  const factory _UserSigninRequest(
      {required final String email,
      required final String password}) = _$_UserSigninRequest;

  factory _UserSigninRequest.fromJson(Map<String, dynamic> json) =
      _$_UserSigninRequest.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserSigninRequestCopyWith<_UserSigninRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
