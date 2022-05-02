import 'package:connectivity/connectivity.dart';
import 'package:dndman_app/utils/session.dart';
import 'package:flutter/material.dart';

class AppStateValidator {
  static void checkConnectivity(BuildContext context) {
    Connectivity().checkConnectivity().then((value) {
      if (value == ConnectivityResult.none) {
        Navigator.pushReplacementNamed(context, "/no_connection");
      }
    },
    );
  }

  // static void checkServerAvailability(BuildContext context) {
  //   APIClient.instance.serverAlive(context).then((value) {
  //     if (!value) {
  //       Navigator.pushReplacementNamed(context, "/no_connection");
  //     }
  //   });
  // }

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