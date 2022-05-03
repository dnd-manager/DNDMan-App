import 'package:dndman_app/utils/session.dart';
import 'package:flutter/material.dart';

class AppStateValidator {
  static void checkLoggedIn(BuildContext context) async {
    final res = await SessionManagement.hasSession();
    if (!res) {
      Navigator.pushReplacementNamed(context, "/auth/signin");
    }
  }

  static void redirectIfLoggedIn(BuildContext context, String route) async {
    final res = await SessionManagement.hasSession();
    if (res) {
      Navigator.pushReplacementNamed(context, route);
    }
  }
}
