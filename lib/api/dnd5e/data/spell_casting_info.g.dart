// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spell_casting_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpellCastingInfo _$$_SpellCastingInfoFromJson(Map<String, dynamic> json) =>
    _$_SpellCastingInfo(
      name: json['name'] as String,
      desc: (json['desc'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SpellCastingInfoToJson(_$_SpellCastingInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'desc': instance.desc,
    };
