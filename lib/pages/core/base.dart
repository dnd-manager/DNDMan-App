import 'package:dndman_app/utils/app_state.dart';
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
    AppStateValidator.checkLoggedIn(context);
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