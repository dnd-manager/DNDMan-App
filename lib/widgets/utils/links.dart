import 'package:dndman_app/generated/assets.dart';
import 'package:dndman_app/generated/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinksWidget extends StatelessWidget {
  const LinksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              const url = "https://github.com/dnd-manager";
              canLaunchUrlString(url).then((value) {
                if (value) {
                  launchUrlString(url);
                }
              });
            },
            icon: const Icon(
              DNDManIcons.github_circled,
            ),
            iconSize: getIconSize(constraints),
            splashRadius: getSplashRadius(constraints),
            tooltip: "Source Code",
          ),

          IconButton(
            onPressed: () {
              const url = "https://discord.com/invite/FatHApd";
              canLaunchUrlString(url).then((value) {
                if (value) {
                  launchUrlString(url);
                }
              });
            },
            icon: const Icon(
              DNDManIcons.discord,
            ),
            iconSize: getIconSize(constraints),
            splashRadius: getSplashRadius(constraints),
            tooltip: "Discord",
          ),

          IconButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationIcon: SvgPicture.asset(
                  Assets.imagesLogo,
                  width: constraints.maxWidth/20,
                ),
                applicationName: "D&D Manager",
                applicationVersion: "0.0.1-dev",
                applicationLegalese: "Some legal shit",
              );
            },
            icon: const Icon(
              DNDManIcons.license,
            ),
            iconSize: getIconSize(constraints),
            splashRadius: getSplashRadius(constraints),
            tooltip: "About",
          ),
        ],
      ),
    );
  }

  double getIconSize(BoxConstraints constraints) {
    return constraints.maxWidth / 40;
  }

  double getSplashRadius(BoxConstraints constraints) {
    return constraints.maxWidth / 50;
  }
}
