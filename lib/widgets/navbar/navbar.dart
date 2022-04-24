import 'package:flutter/material.dart';

import 'desktop_navbar.dart';
import 'mobile_navbar.dart';

class DNDManNavBar extends StatelessWidget {
  final List<Widget>? buttons;

  const DNDManNavBar({Key? key, this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 715) {
          return DesktopNavbar(
            buttons: buttons == null ? [] : buttons!,
          );
        }
        return MobileNavbar(
          buttons: buttons == null ? [] : buttons!,
        );
      },
    );
  }
}
