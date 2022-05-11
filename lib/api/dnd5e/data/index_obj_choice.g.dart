// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_obj_choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IndexObjectChoice<T> _$$_IndexObjectChoiceFromJson<T>(
        Map<String, dynamic> json) =>
    _$_IndexObjectChoice<T>(
      choose: json['choose'] as int,
      type: json['type'] as String,
      from: (json['from'] as List<dynamic>)
          .map((e) => IndexObject.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_IndexObjectChoiceToJson<T>(
        _$_IndexObjectChoice<T> instance) =>
    <String, dynamic>{
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from.map((e) => e.toJson()).toList(),
    };
