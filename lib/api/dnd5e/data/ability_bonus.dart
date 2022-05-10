import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ability_bonus.freezed.dart';
part 'ability_bonus.g.dart';

@freezed
class AbilityBonus with _$AbilityBonus {

  @JsonSerializable(explicitToJson: true)
  const factory AbilityBonus({
    required IndexObject ability_score,
    required int bonus,
  }) = _AbilityBonus;

  factory AbilityBonus.fromJson(Map<String, dynamic> json) => _$AbilityBonusFromJson(json);
}