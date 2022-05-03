import 'package:dndman_app/api/data/dnd/dnd_enums.dart';
import 'package:dndman_app/form_generator/annotations/header.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';
import 'package:dndman_app/form_generator/annotations/space.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:flutter/material.dart';

@reflector
class FrontCharacterPart1 {
  // CHARACTER SHEET TOP SECTION
  @FormHeader("Basic Information")
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
  @FormSpace(60)
  @FormHeader("Ability Scores")
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
    this.strength = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.strength),
    this.dexterity = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.dexterity),
    this.constitution = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.constitution),
    this.intelligence = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.intelligence),
    this.wisdom = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.wisdom),
    this.charisma = const FrontDiceRoll(abilityType: DNDCharacterAbilityTypes.charisma),
  });
}

@reflector
class FrontDiceRoll {
  final int max;
  final int maxTryCount;
  final int value;
  final DNDCharacterAbilityTypes abilityType;

  const FrontDiceRoll({
    this.max = 20,
    this.maxTryCount = 1,
    this.value = 20,
    required this.abilityType,
  });

  factory FrontDiceRoll.copy(FrontDiceRoll other, int value) {
    return FrontDiceRoll(max: other.max, maxTryCount: other.maxTryCount, value: value, abilityType: other.abilityType);
  }
}
