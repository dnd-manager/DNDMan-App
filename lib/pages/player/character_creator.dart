import 'package:dndman_app/dnd/player/character_creation.dart';
import 'package:dndman_app/form_generator/form_generator.dart';
import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/pages/player/player.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCreatorPage1RaceSelectionWidget extends StatelessWidget with DNDManPageMixin {
  static const String route = "/player/character_creator/1";

  const CharacterCreatorPage1RaceSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget make(BuildContext context) {
    return Container();
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(context, PlayerPageWidget.route);
        },
        child: const DNDManButtonLabel(
          text: 'Player View',
          icon: Icons.arrow_back,
        ),
      ),
    ];
  }
}

class CharacterCreatorPage2ClassSelectionWidget extends StatelessWidget with DNDManPageMixin {
  static const String route = "/player/character_creator/2";

  const CharacterCreatorPage2ClassSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget make(BuildContext context) {
    return Container();
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          _showWarning(context, CharacterCreatorPage1RaceSelectionWidget.route);
        },
        child: const DNDManButtonLabel(
          text: 'Last step',
          icon: Icons.arrow_back,
        ),
      ),
    ];
  }
}


class CharacterCreatorPage3Widget extends StatelessWidget with DNDManPageMixin {
  static const String route = "/player/character_creator/3";

  const CharacterCreatorPage3Widget({Key? key}) : super(key: key);

  @override
  Widget make(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Character Creation",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: constraints.maxWidth / 22,
                ),
              ),
              SizedBox(
                width: constraints.maxWidth / 4,
                child: GeneratedForm(
                  object: const FrontCharacterPart1(),
                  onSubmit: (fields) {
                    print(fields);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          _showWarning(context, CharacterCreatorPage2ClassSelectionWidget.route);
        },
        child: const DNDManButtonLabel(
          text: 'Last Step',
          icon: Icons.arrow_back,
        ),
      ),
    ];
  }
}

void _showWarning(BuildContext context, String route) {
  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(
          "Are you sure?",
          style: DNDTextStyle.normalText(),
        ),
        content: Text(
          "You will lose your progress if you leave",
          style: DNDTextStyle.normalText(),
        ),
        actions: [
          DNDManButtonWidget(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                route,
              );
            },
            child: Text(
              "Confirm",
              style: DNDTextStyle.normalText(),
            ),
          ),
          DNDManButtonWidget(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: DNDTextStyle.normalText(),
            ),
          ),
        ],
      );
    },
  );
}
