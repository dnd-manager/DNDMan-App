// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trait _$$_TraitFromJson(Map<String, dynamic> json) => _$_Trait(
      index: json['index'] as String,
      races: (json['races'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      subraces: (json['subraces'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      desc: (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      proficiencies: (json['proficiencies'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      proficiency_choices: (json['proficiency_choices'] as List<dynamic>?)
          ?.map((e) =>
              IndexObjectChoice<dynamic>.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_TraitToJson(_$_Trait instance) => <String, dynamic>{
      'index': instance.index,
      'races': instance.races.map((e) => e.toJson()).toList(),
      'subraces': instance.subraces.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'desc': instance.desc,
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'proficiency_choices':
          instance.proficiency_choices?.map((e) => e.toJson()).toList(),
      'url': instance.url,
    };
