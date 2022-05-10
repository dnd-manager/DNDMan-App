// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'race.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Race _$$_RaceFromJson(Map<String, dynamic> json) => _$_Race(
      index: json['index'] as String,
      name: json['name'] as String,
      speed: json['speed'] as int,
      ability_bonuses: (json['ability_bonuses'] as List<dynamic>)
          .map((e) => AbilityBonus.fromJson(e as Map<String, dynamic>))
          .toList(),
      age: json['age'] as String,
      alignment: json['alignment'] as String,
      size: json['size'] as String,
      size_description: json['size_description'] as String,
      starting_proficiencies: (json['starting_proficiencies'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      language_desc: json['language_desc'] as String,
      traits: (json['traits'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      subraces: (json['subraces'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_RaceToJson(_$_Race instance) => <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'speed': instance.speed,
      'ability_bonuses':
          instance.ability_bonuses.map((e) => e.toJson()).toList(),
      'age': instance.age,
      'alignment': instance.alignment,
      'size': instance.size,
      'size_description': instance.size_description,
      'starting_proficiencies':
          instance.starting_proficiencies.map((e) => e.toJson()).toList(),
      'languages': instance.languages.map((e) => e.toJson()).toList(),
      'language_desc': instance.language_desc,
      'traits': instance.traits.map((e) => e.toJson()).toList(),
      'subraces': instance.subraces.map((e) => e.toJson()).toList(),
      'url': instance.url,
    };
