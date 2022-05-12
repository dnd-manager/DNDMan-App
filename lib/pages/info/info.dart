import 'package:dndman_app/api/dnd5e/data/race.dart';
import 'package:dndman_app/api/dnd5e/dnd_api_client.dart';
import 'package:dndman_app/pages/info/argument.dart';
import 'package:dndman_app/widgets/utils/race.dart';
import 'package:flutter/material.dart';

class DNDInfoPageWidget extends StatelessWidget {
  static const String route = "/dndinfo";

  const DNDInfoPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DNDInfoPageArgument;

    return FutureBuilder(
      future: DND5EAPIClient.instance.getRace(args.name),
      builder: (ctx, item) => item.connectionState == ConnectionState.done ? Center(
        child: AspectRatio(
          aspectRatio: 2.5/3,
          child: RaceWidget(
            race: item.data! as Race,
          ),
        ),
      ) : Container(),
    );
  }
}
