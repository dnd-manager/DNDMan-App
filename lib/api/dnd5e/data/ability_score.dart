import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_score.freezed.dart';
part 'ability_score.g.dart';

@freezed
class AbilityScore with _$AbilityScore {

  @JsonSerializable(explicitToJson: true)
  const factory AbilityScore({
    required String index,
    required String name,
    required String full_name,
    required List<String> desc,
    required List<IndexObject> skills,
    required String url,
  }) = _AbilityScore;

  factory AbilityScore.fromJson(Map<String, dynamic> json) => _$AbilityScoreFromJson(json);
}