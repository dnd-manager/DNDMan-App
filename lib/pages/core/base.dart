import 'package:connectivity/connectivity.dart';
import 'package:dndman_app/utils/session.dart';
import 'package:dndman_app/widgets/navbar/navbar.dart';
import 'package:flutter/material.dart';

mixin DNDManPageMixin {
  List<Widget> navbarItems(BuildContext context);

  Widget make(BuildContext context);

  Widget drawer(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 100),
        child: DNDManNavBar(
          buttons: navbarItems(context),
        ),
      ),
      drawer: drawer(context),
      body: make(context),
    );
  }
}

mixin AppStateValidatorMixin {
  void checkConnectivity(BuildContext context) {
    Connectivity().checkConnectivity().then((value) {
        if (value == ConnectivityResult.none) {
          Navigator.pushReplacementNamed(context, "/no_connection");
        }
      },
    );
  }

  void checkLoggedIn(BuildContext context) async {
    final res = await SessionManagement.hasSession();
    if (!res) {
      Navigator.pushReplacementNamed(context, "/auth/signin");
    }
  }

  void redirectIfLoggedIn(BuildContext context, String route) async {
    final res = await SessionManagement.hasSession();
    if (res) {
      Navigator.pushReplacementNamed(context, route);
    }
  }
}