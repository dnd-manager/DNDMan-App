import 'package:dndman_app/generated/assets.dart';
import 'package:dndman_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockholm/stockholm.dart';

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
      child: LayoutBuilder(
        builder: (ctx, constraints) => Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    Assets.imagesLogo,
                    width: constraints.maxWidth/20,
                  ),
                ),
                Text(
                  appTitle,
                  style: GoogleFonts.rakkas(
                    fontSize: constraints.maxWidth/40,
                  ),
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
      ),
    );
  }
}
