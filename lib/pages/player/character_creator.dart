import 'package:dndman_app/pages/core/base.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCreatorPageWidget extends StatelessWidget with DNDManPageMixin {
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  CharacterCreatorPageWidget({Key? key}) : super(key: key);

  @override
  Widget make(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: const [
        CharacterCreatorPage1(),
        CharacterCreatorPage2(),
      ],
    );
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [];
  }
}

class CharacterCreatorPage1 extends StatelessWidget {
  const CharacterCreatorPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Form(
        child: Center(
          child: Column(
            children: [
              Text(
                "Step 1",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: constraints.maxWidth / 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CharacterCreatorPage2 extends StatelessWidget {
  const CharacterCreatorPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Form(
        child: Center(
          child: Column(
            children: [
              Text(
                "Step 2",
                style: GoogleFonts.cinzelDecorative(
                  fontSize: constraints.maxWidth / 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

