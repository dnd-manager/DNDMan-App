import 'package:dndman_app/utils/text.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String descriptor;
  final String description;
  final double descriptorSize;
  final double descriptionSize;

  const DescriptionWidget({Key? key, required this.descriptor, required this.description, required this.descriptorSize, required this.descriptionSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          children: [
            TextSpan(
              text: descriptor,
              style: DNDTextStyle.normalText(
                fontSize: descriptorSize,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: description,
              style: DNDTextStyle.normalText(
                fontSize: descriptionSize,
                color: Colors.white,
              ),
            ),
          ]
      ),
    );
  }
}
