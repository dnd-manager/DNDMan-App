// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multiclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultiClass _$$_MultiClassFromJson(Map<String, dynamic> json) =>
    _$_MultiClass(
      prerequisites: (json['prerequisites'] as List<dynamic>)
          .map((e) => Prerequisite.fromJson(e as Map<String, dynamic>))
          .toList(),
      proficiencies: (json['proficiencies'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      proficiency_choices: (json['proficiency_choices'] as List<dynamic>)
          .map((e) => Choice<IndexObject>.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MultiClassToJson(_$_MultiClass instance) =>
    <String, dynamic>{
      'prerequisites': instance.prerequisites.map((e) => e.toJson()).toList(),
      'proficiencies': instance.proficiencies.map((e) => e.toJson()).toList(),
      'proficiency_choices':
          instance.proficiency_choices.map((e) => e.toJson()).toList(),
    };
