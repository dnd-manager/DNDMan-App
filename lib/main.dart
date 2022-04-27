import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/pages/auth/signup.dart';
import 'package:dndman_app/pages/core/home.dart';
import 'package:dndman_app/pages/core/no_connection.dart';
import 'package:dndman_app/pages/player/character_creator.dart';
import 'package:dndman_app/pages/player/player.dart';
import 'package:dndman_app/pages/core/profile.dart';
import 'package:flutter/material.dart';
import 'package:stockholm/stockholm.dart';

const String appTitle = "DND Manager";

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: StockholmThemeData.dark(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePageStartWidget(),
        "/home": (context) => const HomePageWidget(),
        "/no_connection": (context) => const NoConnectionPageWidget(),
        "/auth/signin": (context) => const SignInPageWidget(),
        "/auth/signup": (context) => const SignUpPageWidget(),
        "/profile": (context) => const ProfilePageWidget(),
        "/player": (context) => const PlayerPageWidget(),
        "/player/character_creator": (context) => CharacterCreatorPageWidget(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
