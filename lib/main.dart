import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/pages/auth/signup.dart';
import 'package:dndman_app/pages/core/home.dart';
import 'package:dndman_app/pages/core/no_connection.dart';
import 'package:dndman_app/pages/player/player.dart';
import 'package:dndman_app/pages/core/profile.dart';
import 'package:flutter/material.dart';
import 'package:stockholm/stockholm.dart';

const String appTitle = "D&D Manager";

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InheritedApplicationState(child: Builder(
      builder: (ctx) {
        return MaterialApp(
          title: appTitle,
          theme: InheritedApplicationState.of(ctx).darkModeEnabled
              ? StockholmThemeData.dark()
              : StockholmThemeData.light(),
          initialRoute: "/",
          routes: {
            "/": (context) => const HomePageStartWidget(),
            "/home": (context) => const HomePageWidget(),
            "/no_connection": (context) => const NoConnectionPageWidget(),
            "/profile": (context) => const ProfilePageWidget(),
            "/auth/signin": (context) => const SignInPageWidget(),
            "/auth/signup": (context) => const SignUpPageWidget(),
            "/player": (context) => const PlayerPageWidget(),
          },
          debugShowCheckedModeBanner: false,
        );
      },
    ));
  }
}

class InheritedApplicationState extends InheritedWidget {
  final Map<ApplicationStates, dynamic> _data = {
    ApplicationStates.darkMode: true,
  };

  InheritedApplicationState({Key? key, required Widget child})
      : super(key: key, child: child);

  void toggleDarkMode() {
    _data[ApplicationStates.darkMode] = !_data[ApplicationStates.darkMode];
  }

  bool get darkModeEnabled {
    return _data[ApplicationStates.darkMode];
  }

  @override
  bool updateShouldNotify(InheritedApplicationState oldWidget) {
    return _data != oldWidget._data;
  }

  static InheritedApplicationState of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<InheritedApplicationState>();
    assert(result != null, "Tried access InheritedApplicationState under an unknown context");
    return result!;
  }
}

enum ApplicationStates { darkMode }
