import 'package:dndman_app/api/data/dnd/dnd_enums.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';

@reflector
class FrontCharacterPart1 {
  // CHARACTER SHEET TOP SECTION
  final String playerName;
  final String characterName;
  final String className;
  final String raceName;
  @FormOptions(DNDCharacterBackgroundTypes.values)
  final DNDCharacterBackgroundTypes background;
  @FormOptions(DNDCharacterAlignmentTypes.values)
  final DNDCharacterAlignmentTypes alignment;

  // CHARACTER SHEET LEFT ABILITY SCORES SECTION
  // TODO: each value should be determined by 4D6, and chosen by the player
  final FrontDiceRoll strength;
  final FrontDiceRoll dexterity;
  final FrontDiceRoll constitution;
  final FrontDiceRoll intelligence;
  final FrontDiceRoll wisdom;
  final FrontDiceRoll charisma;

  const FrontCharacterPart1({
    this.playerName = "",
    this.characterName = "",
    this.className = "",
    this.raceName = "",
    this.background = DNDCharacterBackgroundTypes.acolyte,
    this.alignment = DNDCharacterAlignmentTypes.lawfulGood,
    this.strength = const FrontDiceRoll(),
    this.dexterity = const FrontDiceRoll(),
    this.constitution = const FrontDiceRoll(),
    this.intelligence = const FrontDiceRoll(),
    this.wisdom = const FrontDiceRoll(),
    this.charisma = const FrontDiceRoll(),
  });
}

@reflector
class FrontDiceRoll {
  final int max;
  final int maxTryCount;
  final int value;

  const FrontDiceRoll({
    this.max = 20,
    this.maxTryCount = 1,
    this.value = 20,
  });

  factory FrontDiceRoll.copy(FrontDiceRoll other, int value) {
    return FrontDiceRoll(
        max: other.max, maxTryCount: other.maxTryCount, value: value);
  }
}
