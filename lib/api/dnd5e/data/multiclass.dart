import 'package:dndman_app/api/dnd5e/data/index_obj_choice.dart';
import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:dndman_app/api/dnd5e/data/prerequisite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiclass.freezed.dart';
part 'multiclass.g.dart';

@freezed
class MultiClass with _$MultiClass {

  @JsonSerializable(explicitToJson: true)
  const factory MultiClass({
    required List<Prerequisite> prerequisites,
    required List<IndexObject> proficiencies,
    required List<IndexObjectChoice> proficiency_choices,
  }) = _MultiClass;

  factory MultiClass.fromJson(Map<String, dynamic> json) => _$MultiClassFromJson(json);
}