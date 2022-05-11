import 'package:dndman_app/api/dnd5e/data/race.dart';
import 'package:dndman_app/api/dnd5e/data/trait.dart';
import 'package:dndman_app/api/dnd5e/dnd_api_client.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/description.dart';
import 'package:flutter/material.dart';

class RaceWidget extends StatelessWidget {
  final Race race;

  const RaceWidget({Key? key, required this.race}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => ListView(
        children: [
          Center(
            child: Text(
              race.name,
              style: DNDTextStyle.displayText(
                fontSize: constraints.maxWidth / 8,
              ),
            ),
          ),
          DescriptionWidget(
            descriptor: "Alignment: ",
            description: race.alignment,
            descriptorSize: constraints.maxWidth / 30,
            descriptionSize: constraints.maxWidth / 40,
          ),
          SizedBox(
            height: constraints.maxHeight / 35,
          ),
          DescriptionWidget(
            descriptor: "Age: ",
            description: race.age,
            descriptorSize: constraints.maxWidth / 30,
            descriptionSize: constraints.maxWidth / 40,
          ),
          SizedBox(
            height: constraints.maxHeight / 35,
          ),
          DescriptionWidget(
            descriptor: "Size: ",
            description: race.size_description,
            descriptorSize: constraints.maxWidth / 30,
            descriptionSize: constraints.maxWidth / 40,
          ),
          SizedBox(
            height: constraints.maxHeight / 35,
          ),
          DescriptionWidget(
            descriptor: "Languages: ",
            description: race.language_desc,
            descriptorSize: constraints.maxWidth / 30,
            descriptionSize: constraints.maxWidth / 40,
          ),
          SizedBox(
            height: constraints.maxHeight / 35,
          ),

          // ability bonuses
          if (race.ability_bonuses.isNotEmpty)
            Text(
              "Ability Bonuses: ",
              style: DNDTextStyle.normalText(
                fontSize: constraints.maxWidth / 30,
              ),
            ),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              for (var bonus in race.ability_bonuses)
                ListTile(
                  leading: const Icon(
                    Icons.circle,
                    size: 15,
                  ),
                  title: Text(
                    bonus.ability_score.name,
                    style: DNDTextStyle.normalText(
                      fontSize: constraints.maxWidth / 30,
                    ),
                  ),
                  subtitle: Text(
                    bonus.bonus.toString(),
                    style: DNDTextStyle.normalText(
                      fontSize: constraints.maxWidth / 40,
                    ),
                  ),
                ),
            ],
          ),
          if (race.ability_bonuses.isEmpty)
            DescriptionWidget(
              descriptor: "Ability Bonuses",
              description: "None",
              descriptorSize: constraints.maxWidth / 30,
              descriptionSize: constraints.maxWidth / 40,
            ),



          // traits
          if (race.traits.isNotEmpty)
            Text(
              "Traits: ",
              style: DNDTextStyle.normalText(
                fontSize: constraints.maxWidth / 30,
              ),
            ),
          ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            children: [
              for (var traitIndex in race.traits)
                FutureBuilder<Map<String, dynamic>>(
                  future: DND5EAPIClient.instance.getIndexObjectData(traitIndex),
                  builder: (ctx, asyncSnapshot) =>
                      asyncSnapshot.connectionState == ConnectionState.done
                          ? ListTile(
                              leading: const Icon(
                                Icons.circle,
                                size: 15,
                              ),
                              title: Text(
                                Trait.fromJson(asyncSnapshot.data!).name,
                                style: DNDTextStyle.normalText(
                                  fontSize: constraints.maxWidth / 40,
                                ),
                              ),
                            )
                          : Container(),
                ),
            ],
          ),
          if (race.traits.isEmpty)
            DescriptionWidget(
              descriptor: "Traits: ",
              description: "None",
              descriptorSize: constraints.maxWidth / 30,
              descriptionSize: constraints.maxWidth / 40,
            ),
        ],
      ),
    );
  }
}
