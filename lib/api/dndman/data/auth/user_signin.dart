import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_signin.freezed.dart';
part 'user_signin.g.dart';

@freezed
class UserSigninRequest with _$UserSigninRequest {

  @JsonSerializable(explicitToJson: true)
  const factory UserSigninRequest({
    required String email,
    required String password,
  }) = _UserSigninRequest;

  factory UserSigninRequest.fromJson(Map<String, dynamic> json) => _$UserSigninRequestFromJson(json);
}