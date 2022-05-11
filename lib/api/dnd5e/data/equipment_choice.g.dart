// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentChoice<T> _$$_EquipmentChoiceFromJson<T>(
        Map<String, dynamic> json) =>
    _$_EquipmentChoice<T>(
      choose: json['choose'] as int,
      type: json['type'] as String,
      from: (json['from'] as List<dynamic>)
          .map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EquipmentChoiceToJson<T>(
        _$_EquipmentChoice<T> instance) =>
    <String, dynamic>{
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from.map((e) => e.toJson()).toList(),
    };
