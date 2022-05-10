import 'package:dndman_app/api/dndman/data/dnd/dnd_enums.dart';
import 'package:dndman_app/form_generator/annotations/header.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';
import 'package:dndman_app/form_generator/annotations/space.dart';

@reflector
class FrontCharacterPart1 {
  // CHARACTER SHEET TOP SECTION
  @FormHeader("Basic Information")
  final String playerName;
  final String characterName;
  @FormOptions(DNDCharacterBackgroundTypes.values)
  final DNDCharacterBackgroundTypes background;
  @FormOptions(DNDCharacterAlignmentTypes.values)
  final DNDCharacterAlignmentTypes alignment;

  // CHARACTER SHEET LEFT ABILITY SCORES SECTION
  // TODO: make sure each are unique
  @FormSpace(60)
  @FormHeader("Ability Scores")
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign15;
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign14;
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign13;
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign12;
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign10;
  @FormOptions(DNDCharacterAbilityTypes.values)
  final DNDCharacterAbilityTypes assign8;

  @FormSpace(60)
  @FormHeader("Ability Scores")


  const FrontCharacterPart1({
    this.playerName = "",
    this.characterName = "",
    this.background = DNDCharacterBackgroundTypes.acolyte,
    this.alignment = DNDCharacterAlignmentTypes.lawfulGood,
    this.assign15 = DNDCharacterAbilityTypes.strength,
    this.assign14 = DNDCharacterAbilityTypes.dexterity,
    this.assign13 = DNDCharacterAbilityTypes.constitution,
    this.assign12 = DNDCharacterAbilityTypes.intelligence,
    this.assign10 = DNDCharacterAbilityTypes.wisdom,
    this.assign8 = DNDCharacterAbilityTypes.charisma,
  });
}