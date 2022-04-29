import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/widgets/utils/button.dart';
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
      children: [
        CharacterCreatorPage1(),
        CharacterCreatorPage2(),
      ],
    );
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
          onPressed: () {
            Navigator.pushReplacementNamed(context, "/player");
          },
          child: const DNDManButtonLabel(
            text: 'Player',
            icon: Icons.arrow_back,
          ),
      ),
    ];
  }
}

mixin CharacterCreatorPageMixin {
  final GlobalKey<FormState> _pageFormKey = GlobalKey();
  final Map<String, TextEditingController> _textContents = {};

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Form(
        key: _pageFormKey,
        child: Center(
          child: Column(
            children: [
              Text(
                title(),
                style: GoogleFonts.cinzelDecorative(
                  fontSize: constraints.maxWidth / 25,
                ),
              ),
              for (var widget in content(context, _textContents))
                widget,
              DNDManButtonWidget(
                onPressed: () {
                  if (_pageFormKey.currentState!.validate()) {
                    handleData(_textContents);
                  }
                },
                child: Text(
                  "Next Step",
                  style: GoogleFonts.notoSerif(
                      fontSize: 14
                  ),
                ),
                width: 200,
                height: 75,
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 12,
                  bottom: 30,
                ),
                flat: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String title();

  List<Widget> content(BuildContext context, Map<String, TextEditingController> textContent);

  void handleData(Map<String, TextEditingController> textContent);
}

class CharacterCreatorPage1 extends StatelessWidget with CharacterCreatorPageMixin {
  final TextEditingController _playerNameController = TextEditingController();
  final TextEditingController _characterNameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  CharacterCreatorPage1({Key? key}) : super(key: key);

  @override
  String title() => "Step 1";

  @override
  List<Widget> content(BuildContext context, Map<String, TextEditingController> textContent) {
    return [

    ];
  }

  @override
  void handleData(Map<String, TextEditingController> textContent) {
  }
}

class CharacterCreatorPage2 extends StatelessWidget with CharacterCreatorPageMixin {
  CharacterCreatorPage2({Key? key}) : super(key: key);

  @override
  String title() => "Step 2";

  @override
  List<Widget> content(BuildContext context, Map<String, TextEditingController> textContent) {
    return [

    ];
  }

  @override
  void handleData(Map<String, TextEditingController> textContent) {
  }
}

