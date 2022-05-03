import 'package:dndman_app/api/data/dnd/dnd_enums.dart';
import 'package:dndman_app/dnd/player/character_creation.dart';
import 'package:dndman_app/form_generator/form_generator.dart';
import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCreatorPageWidget extends StatelessWidget with DNDManPageMixin {
  CharacterCreatorPageWidget({Key? key}) : super(key: key);

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
                      Navigator.pushReplacementNamed(context, "/player");
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
        },
        child: const DNDManButtonLabel(
          text: 'Player',
          icon: Icons.arrow_back,
        ),
      ),
    ];
  }
}
