import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_object.freezed.dart';
part 'index_object.g.dart';

@freezed
class IndexObject with _$IndexObject {

  @JsonSerializable(explicitToJson: true)
  const factory IndexObject({
    required String index,
    required String name,
    required String url,
  }) = _IndexObject;

  factory IndexObject.fromJson(Map<String, dynamic> json) => _$IndexObjectFromJson(json);
}