import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiclass.freezed.dart';
part 'multiclass.g.dart';

@freezed
class MultiClass with _$MultiClass {

  @JsonSerializable(explicitToJson: true)
  const factory MultiClass({
    required IndexObject ability_score,
    required int bonus,
  }) = _MultiClass;

  factory MultiClass.fromJson(Map<String, dynamic> json) => _$MultiClassFromJson(json);
}