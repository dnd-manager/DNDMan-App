import 'package:dndman_app/api/dnd5e/data/equipment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_choice.freezed.dart';
part 'equipment_choice.g.dart';

@freezed
class EquipmentChoice<T> with _$EquipmentChoice<T> {

  @JsonSerializable(explicitToJson: true)
  const factory EquipmentChoice({
    required int choose,
    required String type,
    required List<Equipment> from,
  }) = _EquipmentChoice;

  factory EquipmentChoice.fromJson(Map<String, dynamic> json) => _$EquipmentChoiceFromJson(json);
}