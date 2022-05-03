import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';

class DMPageWidget extends StatefulWidget {
  static const String route = "/dm";

  const DMPageWidget({Key? key}) : super(key: key);

  @override
  State<DMPageWidget> createState() => _DMPageWidgetState();
}

class _DMPageWidgetState extends State<DMPageWidget> with DNDManPageMixin {
  @override
  Widget make(BuildContext context) {
    return Container();
  }

  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: PopupMenuButton<DNDManButtonLabel>(
          itemBuilder: (ctx) => [
            const PopupMenuItem(
              child: Tooltip(
                child: DNDManButtonLabel(
                  icon: Icons.text_fields,
                  text: "Campaign Document",
                ),
                message: "Plan your campaign documents",
              ),
            ),
            const PopupMenuItem(
              child: Tooltip(
                child: DNDManButtonLabel(
                  icon: Icons.text_fields,
                  text: "Monsters Information",
                ),
                message: "Coming soon!",
              ),
            ),
            const PopupMenuItem(
              child: Tooltip(
                child: DNDManButtonLabel(
                  icon: Icons.text_fields,
                  text: "Map Creator",
                ),
                message: "Coming soon!",
              ),
            ),
          ],
          child: const DNDManButtonLabel(
            icon: Icons.map,
            text: "Campaign Planner",
          ),
          tooltip: "Plan your campaign! Documents, stories, maps, monsters and more.",
        ),
      ),
    ];
  }
}
