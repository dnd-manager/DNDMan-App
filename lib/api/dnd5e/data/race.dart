import 'package:dndman_app/api/dnd5e/data/ability_bonus.dart';
import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race.freezed.dart';
part 'race.g.dart';

@freezed
class Race with _$Race {

  @JsonSerializable(explicitToJson: true)
  const factory Race({
    required String index,
    required String name,
    required int speed,
    required List<AbilityBonus> ability_bonuses,
    required String age,
    required String alignment,
    required String size,
    required String size_description,
    required List<IndexObject> starting_proficiencies,
    required List<IndexObject> languages,
    required String language_desc,
    required List<IndexObject> traits,
    required List<IndexObject> subraces,
    required String url,
  }) = _Race;

  factory Race.fromJson(Map<String, dynamic> json) => _$RaceFromJson(json);
}