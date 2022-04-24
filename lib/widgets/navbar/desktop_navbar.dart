import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockholm/stockholm.dart';

import '../../generated/assets.dart';
import '../../main.dart';
import '../utils/button.dart';

class DesktopNavbar extends StatelessWidget {
  final List<Widget> buttons;

  const DesktopNavbar({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: stockholmBoxShadow(context),
      ),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  Assets.imagesLogo,
                  width: 60,
                ),
              ),
              Text(
                appTitle,
                style: GoogleFonts.rakkas(fontSize: 40),
              ),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buttons,
          ),
        ],
      ),
    );
  }
}
