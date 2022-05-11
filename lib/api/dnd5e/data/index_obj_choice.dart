import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_obj_choice.freezed.dart';
part 'index_obj_choice.g.dart';

@freezed
class IndexObjectChoice<T> with _$IndexObjectChoice<T> {

  @JsonSerializable(explicitToJson: true)
  const factory IndexObjectChoice({
    required int choose,
    required String type,
    required List<IndexObject> from,
  }) = _IndexObjectChoice;

  factory IndexObjectChoice.fromJson(Map<String, dynamic> json) => _$IndexObjectChoiceFromJson(json);
}