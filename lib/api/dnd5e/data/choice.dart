import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';
part 'choice.g.dart';

@freezed
class Choice<T> with _$Choice<T> {

  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
  const factory Choice({
    required int choose,
    required String type,
    required List<T> from,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}