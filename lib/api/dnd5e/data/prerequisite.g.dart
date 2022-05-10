// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prerequisite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Prerequisites _$$_PrerequisitesFromJson(Map<String, dynamic> json) =>
    _$_Prerequisites(
      ability_score:
          IndexObject.fromJson(json['ability_score'] as Map<String, dynamic>),
      minimum_score: json['minimum_score'] as int,
    );

Map<String, dynamic> _$$_PrerequisitesToJson(_$_Prerequisites instance) =>
    <String, dynamic>{
      'ability_score': instance.ability_score.toJson(),
      'minimum_score': instance.minimum_score,
    };
