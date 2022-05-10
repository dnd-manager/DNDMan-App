// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpellCasting _$$_SpellCastingFromJson(Map<String, dynamic> json) =>
    _$_SpellCasting(
      level: json['level'] as int,
      spellcasting_ability: IndexObject.fromJson(
          json['spellcasting_ability'] as Map<String, dynamic>),
      info: (json['info'] as List<dynamic>)
          .map((e) => SpellCastingInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpellCastingToJson(_$_SpellCasting instance) =>
    <String, dynamic>{
      'level': instance.level,
      'spellcasting_ability': instance.spellcasting_ability.toJson(),
      'info': instance.info.map((e) => e.toJson()).toList(),
    };
