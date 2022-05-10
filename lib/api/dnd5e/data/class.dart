import 'package:dndman_app/api/dnd5e/data/equipment.dart';
import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:dndman_app/api/dnd5e/data/choice.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {

  @JsonSerializable(explicitToJson: true)
  const factory Class({
    required String index,
    required String name,
    required int hit_die,
    required List<Choice<IndexObject>> proficiency_choices,
    required List<IndexObject> proficiencies,
    required List<IndexObject> saving_throws,
    required List<Equipment> starting_equipment,
    required List<Choice<Equipment>> starting_equipment_options,
    required String class_levels,
    required 
    required String url,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);
}