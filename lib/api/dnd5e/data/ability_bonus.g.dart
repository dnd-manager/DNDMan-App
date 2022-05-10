// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_bonus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbilityBonus _$$_AbilityBonusFromJson(Map<String, dynamic> json) =>
    _$_AbilityBonus(
      ability_score:
          IndexObject.fromJson(json['ability_score'] as Map<String, dynamic>),
      bonus: json['bonus'] as int,
    );

Map<String, dynamic> _$$_AbilityBonusToJson(_$_AbilityBonus instance) =>
    <String, dynamic>{
      'ability_score': instance.ability_score.toJson(),
      'bonus': instance.bonus,
    };
