import 'package:freezed_annotation/freezed_annotation.dart';

part 'spell_casting_info.freezed.dart';
part 'spell_casting_info.g.dart';

@freezed
class SpellCastingInfo with _$SpellCastingInfo {

  @JsonSerializable(explicitToJson: true)
  const factory SpellCastingInfo({
    required String name,
    required List<String> desc,
  }) = _SpellCastingInfo;

  factory SpellCastingInfo.fromJson(Map<String, dynamic> json) => _$SpellCastingInfoFromJson(json);
}