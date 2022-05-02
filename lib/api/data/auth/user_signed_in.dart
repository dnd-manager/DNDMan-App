import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_signed_in.freezed.dart';
part 'user_signed_in.g.dart';

@freezed
class UserSignedIn with _$UserSignedIn {

  @JsonSerializable(explicitToJson: true)
  const factory UserSignedIn({
    required String session,
    required int user,
  }) = _UserSignedIn;

  factory UserSignedIn.fromJson(Map<String, dynamic> json) => _$UserSignedInFromJson(json);
}