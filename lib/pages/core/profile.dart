import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> with DNDManPageMixin {
  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(
              context,
              "/player",
          );
        },
        child: const DNDManButtonLabel(
          icon: Icons.shield_moon,
          text: "Player",
        ),
        tooltip: "Player tools",
      ),
      DNDManButtonWidget(
        onPressed: () {
        },
        child: const DNDManButtonLabel(
          icon: Icons.castle,
          text: "Dungeon Master",
        ),
        tooltip: "Dungeon master tools",
      ),
    ];
  }

  @override
  Widget make(BuildContext context) {
    return Container();
  }
}
