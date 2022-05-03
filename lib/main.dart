import 'package:dndman_app/dnd/player/character_creation.dart';
import 'package:dndman_app/dnd/player/generator_components/dice_roll.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:dndman_app/form_generator/generators/bool.dart';
import 'package:dndman_app/form_generator/generators/enum.dart';
import 'package:dndman_app/form_generator/generators/number.dart';
import 'package:dndman_app/form_generator/generators/range.dart';
import 'package:dndman_app/form_generator/generators/string.dart';
import 'package:dndman_app/main.reflectable.dart';
import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/pages/auth/signup.dart';
import 'package:dndman_app/pages/core/home.dart';
import 'package:dndman_app/pages/dm/dm.dart';
import 'package:dndman_app/pages/player/character_creator.dart';
import 'package:dndman_app/pages/player/player.dart';
import 'package:dndman_app/pages/core/profile.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';
import 'package:stockholm/stockholm.dart';

const String appTitle = "DND Manager";
final List<Type> reflectables = [];
final List<FormGeneratorComponent> formGeneratorComponents = [];

InstanceMirror reflectInstance(Object object) {
  if (!reflectables.contains(object.runtimeType) || !reflector.canReflect(object)) {
    throw Exception("Tried to reflect non-reflectable object, did you register it in main.dart?");
  }

  return reflector.reflect(object);
}

T typeOf<T>(T type) => type;

void main() {
  initializeReflectable();

  reflectables.add(FrontCharacterPart1);
  reflectables.add(FrontDiceRoll);

  formGeneratorComponents.add(BoolFormGeneratorComponent());
  formGeneratorComponents.add(EnumFormGeneratorComponent());
  formGeneratorComponents.add(NumberFormGeneratorComponent());
  formGeneratorComponents.add(RangeFormGeneratorComponent());
  formGeneratorComponents.add(StringFormGeneratorComponent());
  formGeneratorComponents.add(DiceRollFormGeneratorComponent());

  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: StockholmThemeData.dark(),
      initialRoute: HomePageStartWidget.route,
      routes: {
        HomePageStartWidget.route: (context) => const HomePageStartWidget(),
        HomePageWidget.route: (context) => const HomePageWidget(),
        SignInPageWidget.route: (context) => const SignInPageWidget(),
        SignUpPageWidget.route: (context) => const SignUpPageWidget(),
        ProfilePageWidget.route: (context) => const ProfilePageWidget(),
        PlayerPageWidget.route: (context) => const PlayerPageWidget(),
        CharacterCreatorPageWidget.route: (context) => CharacterCreatorPageWidget(),
        DMPageWidget.route: (context) => const DMPageWidget(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
