import 'package:dndman_app/generated/icons.dart';
import 'package:dndman_app/pages/base.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:dndman_app/widgets/utils/dice.dart';
import 'package:flutter/material.dart';

class PlayerPageWidget extends StatefulWidget {
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
  List<Widget> makeButtons(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          // if page refreshes
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } else {
            Navigator.pushNamed(context, "/profile");
          }
        },
        child: const DNDManButtonLabel(
          icon: Icons.arrow_back,
          text: "Profile",
        ),
      ),

      DNDManButtonWidget(
        onPressed: () {
          toggleDiceRoller();
        },
        child: const DNDManButtonLabel(
          icon: DNDManIcons.perspectiveDiceOne,
          text: "Dice Roller",
        ),
      ),
    ];
  }

  @override
  Widget make(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      if (_showDiceRoller) {
        return ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 250,
            maxHeight: 400,
          ),
          child: GridView.count(
            crossAxisCount: 2,
            children: const [
              DiceWidget(maxValue: 20),
              DiceWidget(maxValue: 12),
              DiceWidget(maxValue: 10),
              DiceWidget(maxValue: 8),
              DiceWidget(maxValue: 6),
              DiceWidget(maxValue: 4),
            ],
          ),
        );
      }
      return Container();
    });
  }
}
