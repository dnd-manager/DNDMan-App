// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Choice<T> _$$_ChoiceFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_Choice<T>(
      choose: json['choose'] as int,
      type: json['type'] as String,
      from: (json['from'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$_ChoiceToJson<T>(
  _$_Choice<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'choose': instance.choose,
      'type': instance.type,
      'from': instance.from.map(toJsonT).toList(),
    };
