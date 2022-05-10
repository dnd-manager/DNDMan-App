
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_create.freezed.dart';
part 'user_create.g.dart';

@freezed
class UserCreate with _$UserCreate {

  @JsonSerializable(explicitToJson: true)
  const factory UserCreate({
    required String email,
    required String username,
    required String password,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) => _$UserCreateFromJson(json);
}