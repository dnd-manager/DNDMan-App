import 'package:dndman_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoConnectionPageWidget extends StatelessWidget {
  const NoConnectionPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) => Column(
          children: [
            SvgPicture.asset(
              Assets.imagesLogo,
              width: constraints.maxWidth/10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Please check your internet connection before continuing",
                style: TextStyle(
                  fontSize: constraints.maxWidth/40,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
