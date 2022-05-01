import 'package:dndman_app/form_generator/annotations/hide.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';

@reflector
class DNDCharacter {
  final String playerName;
  final String characterName;
  final int armourClass;
  final int initiativeBonus;
  @FormHidden()
  late final int speedInFeet;
  @FormHidden()
  late final int maxHitPoints;
  @FormHidden()
  late int currentHitPoints;
  final DiceRoll hitDice;

  DNDCharacter({
    this.playerName = "Enter Player Name",
    this.characterName = "Enter Character Name",
    this.armourClass = 0,
    this.initiativeBonus = 0,
    this.hitDice = const DiceRoll(),
  }) {
    // TODO change this base on race and stuff
    speedInFeet = 25;
    maxHitPoints = 0;
    currentHitPoints = maxHitPoints;
  }
}

@reflector
class DiceRoll {
  final int max;
  final int maxTryCount;
  final int value;

  const DiceRoll({
    this.max = 20,
    this.maxTryCount = 1,
    this.value = 20,
  });

  factory DiceRoll.copy(DiceRoll other, int value) {
    return DiceRoll(max: other.max, maxTryCount: other.maxTryCount, value: value);
  }
}

enum AbilityTypes {
  strength,
  dexterity,
  constitution,
  intelligence,
  wisdom,
  charisma,
}