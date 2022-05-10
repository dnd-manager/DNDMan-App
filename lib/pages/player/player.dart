import 'package:dndman_app/generated/icons.dart';
import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/pages/core/profile.dart';
import 'package:dndman_app/pages/player/character_creator.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:dndman_app/widgets/utils/dice.dart';
import 'package:flutter/material.dart';

class PlayerPageWidget extends StatefulWidget {
  static const String route = "/player";

  const PlayerPageWidget({Key? key}) : super(key: key);

  @override
  _PlayerPageWidgetState createState() => _PlayerPageWidgetState();
}

class _PlayerPageWidgetState extends State<PlayerPageWidget> with DNDManPageMixin, TickerProviderStateMixin {
  bool _showDiceRoller = false;

  void toggleDiceRoller() {
    setState(() {
      _showDiceRoller = !_showDiceRoller;
    });
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            ProfilePageWidget.route,
          );
        },
        child: const DNDManButtonLabel(
          icon: Icons.arrow_back,
          text: "Profile",
        ),
        tooltip: "Back to profile",
      ),
      DNDManButtonWidget(
        onPressed: () {
          toggleDiceRoller();
        },
        child: const DNDManButtonLabel(
          icon: DNDManIcons.perspective_dice_one,
          text: "Dice Roller",
        ),
        tooltip: "Enable dice rollers",
      ),
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(context, CharacterCreatorPage1RaceSelectionWidget.route);
        },
        child: const DNDManButtonLabel(
          icon: Icons.newspaper,
          text: "Character Creator",
        ),
        tooltip: "Character creation",
      ),
    ];
  }

  @override
  Widget make(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      if (_showDiceRoller) {
        return SizedBox(
          width: constraints.maxWidth / 20,
          child: Column(
            children: [
              DiceWidget(
                maxValue: 20,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
              DiceWidget(
                maxValue: 12,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
              DiceWidget(
                maxValue: 10,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
              DiceWidget(
                maxValue: 8,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
              DiceWidget(
                maxValue: 6,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
              DiceWidget(
                maxValue: 4,
                width: constraints.maxWidth / 25,
                height: constraints.maxWidth / 25,
              ),
            ],
          ),
        );
      }
      return Container();
    });
  }
}
