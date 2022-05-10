import 'package:dndman_app/api/dnd5e/data/index_object.dart';
import 'package:dndman_app/api/dnd5e/data/spell_casting_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'spell_casting.freezed.dart';
part 'spell_casting.g.dart';

@freezed
class SpellCasting with _$SpellCasting {

  @JsonSerializable(explicitToJson: true)
  const factory SpellCasting({
    required int level,
    required IndexObject spellcasting_ability,
    required List<SpellCastingInfo> info,
  }) = _SpellCasting;

  factory SpellCasting.fromJson(Map<String, dynamic> json) => _$SpellCastingFromJson(json);
}