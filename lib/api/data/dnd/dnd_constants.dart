class DNDConstants {
  static int calculateAbilityModifierFromScore(int score) {
    return ((score - 10)/2).floor();
  }

  static int getProficiencyModifier(int characterLevel) {
    return (characterLevel/4).ceil() + 1;
  }
}