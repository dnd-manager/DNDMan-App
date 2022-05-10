import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prerequisite.freezed.dart';
part 'prerequisite.g.dart';

@freezed
class Prerequisite with _$Prerequisite {

  @JsonSerializable(explicitToJson: true)
  const factory Prerequisite({
    required IndexObject ability_score,
    required int minimum_score,
  }) = _Prerequisites;

  factory Prerequisite.fromJson(Map<String, dynamic> json) => _$PrerequisiteFromJson(json);
}