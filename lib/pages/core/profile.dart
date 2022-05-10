import 'package:dndman_app/pages/core/base.dart';
import 'package:dndman_app/pages/core/home.dart';
import 'package:dndman_app/pages/dm/dm.dart';
import 'package:dndman_app/pages/player/player.dart';
import 'package:dndman_app/utils/session.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';

class ProfilePageWidget extends StatefulWidget {
  static const String route = "/profile";

  const ProfilePageWidget({Key? key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> with DNDManPageMixin {
  @override
  List<Widget> navbarItems(BuildContext context) {
    return [
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            PlayerPageWidget.route,
          );
        },
        child: const DNDManButtonLabel(
          icon: Icons.shield_moon,
          text: "Player",
        ),
        tooltip: "Player tools",
      ),
      DNDManButtonWidget(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            DMPageWidget.route,
          );
        },
        child: const DNDManButtonLabel(
          icon: Icons.castle,
          text: "Dungeon Master",
        ),
        tooltip: "Dungeon master tools",
      ),
    ];
  }

  @override
  Widget make(BuildContext context) {
    // return FutureBuilder<int>(
    //   future: SessionManagement.getCurrentUserID(),
    //   builder: (ctx, userIDSnapshot) =>
    //   userIDSnapshot.connectionState == ConnectionState.done? FutureBuilder<User>(
    //       future: APIClient.instance.getUser(context, userIDSnapshot.data!),
    //       builder: (ctx, userSnapshot) {
    //         if (userSnapshot.connectionState == ConnectionState.done) {
    //           var user = userSnapshot.data!;
    //           var username = user.username;
    //           return LayoutBuilder(
    //             builder: (ctx, constraints) => SizedBox.expand(
    //               child: SingleChildScrollView(
    //                 child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Text(
    //                           "$username's Profile",
    //                           style: DNDTextStyle.displayText(
    //                             fontSize: constraints.maxWidth / 25,
    //                           ),
    //                         ),
    //                         DNDManButtonWidget(
    //                           onPressed: () {
    //                             SessionManagement.getCurrentSessionID().then((
    //                                 value) {
    //                               APIClient.instance.signOutUser(context, value)
    //                                   .then((value) {
    //                                 SessionManagement.deleteSession().then((value) {
    //                                   Navigator.pushReplacementNamed(context, HomePageStartWidget.route);
    //                                 });
    //                               });
    //                             });
    //                           },
    //                           child: DNDManButtonLabel(
    //                             text: "Sign out",
    //                             fontSize: constraints.maxWidth/75,
    //                           ),
    //                           width: constraints.maxWidth/12,
    //                           height: constraints.maxWidth/30,
    //                         ),
    //                       ],
    //                     ),
    //               ),
    //             ),
    //           );
    //         }
    //         return const Center(child: CircularProgressIndicator());
    //       }
    //   ) : const Center(child: CircularProgressIndicator()),
    // );
    return Container();
  }
}
