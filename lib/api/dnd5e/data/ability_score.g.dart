// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbilityScore _$$_AbilityScoreFromJson(Map<String, dynamic> json) =>
    _$_AbilityScore(
      index: json['index'] as String,
      name: json['name'] as String,
      full_name: json['full_name'] as String,
      desc: (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
      skills: (json['skills'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_AbilityScoreToJson(_$_AbilityScore instance) =>
    <String, dynamic>{
      'index': instance.index,
      'name': instance.name,
      'full_name': instance.full_name,
      'desc': instance.desc,
      'skills': instance.skills.map((e) => e.toJson()).toList(),
      'url': instance.url,
    };
