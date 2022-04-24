import 'package:dndman_app/pages/base.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';

class ProfilePageWidget extends StatefulWidget {
  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> with DNDManPageMixin {
  @override
  List<Widget> makeButtons(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushNamed(context, "/player");
        },
        child: const DNDManButtonLabel(
          icon: Icons.shield_moon,
          text: "Player",
        ),
      ),
      DNDManButtonWidget(
        onPressed: () {
        },
        child: const DNDManButtonLabel(
          icon: Icons.castle,
          text: "Dungeon Master",
        ),
      ),
    ];
  }

  @override
  Widget make(BuildContext context) {
    return Container();
  }
}
