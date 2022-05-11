// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map<String, dynamic> json) => _$_Class(
      index: json['index'] as String,
      name: json['name'] as String,
      hit_die: json['hit_die'] as int,
      proficiency_choices: (json['proficiency_choices'] as List<dynamic>)
          .map((e) =>
              IndexObjectChoice<dynamic>.fromJson(e as Map<String, dynamic>))
          .toList(),
      proficiencies: (json['proficiencies'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      saving_throws: (json['saving_throws'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      starting_equipment: (json['starting_equipment'] as List<dynamic>)
          .map((e) => Equipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      starting_equipment_options:
          (json['starting_equipment_options'] as List<dynamic>)
              .map((e) =>
                  EquipmentChoice<dynamic>.fromJson(e as Map<String, dynamic>))
              .toList(),
      class_levels: json['class_levels'] as String,
      multi_classing:
          MultiClass.fromJson(json['multi_classing'] as Map<String, dynamic>),
      subclasses: (json['subclasses'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      spellcasting:
          SpellCasting.fromJson(json['spellcasting'] as Map<String, dynamic>),
      spells: json['spells'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'hit_die': instance.hit_die,
      'proficiency_choices':
          instance.proficiency_choices.map((e) => e.toJson()).toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'saving_throws': instance.saving_throws.map((e) => e.toJson()).toList(),
      'starting_equipment':
          instance.starting_equipment.map((e) => e.toJson()).toList(),
      'starting_equipment_options':
          instance.starting_equipment_options.map((e) => e.toJson()).toList(),
      'class_levels': instance.class_levels,
      'multi_classing': instance.multi_classing.toJson(),
      'subclasses': instance.subclasses.map((e) => e.toJson()).toList(),
      'spellcasting': instance.spellcasting.toJson(),
      'spells': instance.spells,
      'url': instance.url,
    };
