import 'package:dndman_app/dnd/dnd.dart';
import 'package:dndman_app/form_generator/form_generator.dart';
import 'package:dndman_app/pages/core/base.dart';
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
                  object: DNDCharacter(),
                  onSubmit: (fields) {
                    final character = DNDCharacter(

                    );
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
                  style: GoogleFonts.notoSerif(),
                ),
                content: Text(
                  "You will lose your progress if you leave",
                  style: GoogleFonts.notoSerif(),
                ),
                actions: [
                  DNDManButtonWidget(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/player");
                    },
                    child: Text(
                      "Confirm",
                      style: GoogleFonts.notoSerif(),
                    ),
                  ),
                  DNDManButtonWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.notoSerif(),
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
