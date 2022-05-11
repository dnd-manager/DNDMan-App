import 'package:dndman_app/api/dnd5e/data/index_obj_choice.dart';
import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trait.freezed.dart';
part 'trait.g.dart';

@freezed
class Trait with _$Trait {

  @JsonSerializable(explicitToJson: true)
  const factory Trait({
    required String index,
    required List<IndexObject> races,
    required List<IndexObject> subraces,
    required String name,
    required List<String> desc,
    required List<IndexObject> proficiencies,
    required List<IndexObjectChoice>? proficiency_choices,
    required String url,
  }) = _Trait;

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);
}