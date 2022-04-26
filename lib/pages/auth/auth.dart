import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AuthPageState<T extends StatefulWidget> extends State<T> {
  final String title;

  AuthPageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme
          .of(context)
          .backgroundColor,
      child: Center(
        child: FittedBox(
          child: Container(
            constraints: const BoxConstraints(
              minWidth: 300,
              minHeight: 400,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).popupMenuTheme.color,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(6, 5),
                  blurRadius: 2,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black12
                      : Colors.black54,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    title,
                    style: GoogleFonts.rakkas(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    softWrap: true,
                  ),
                ),
                for (var item in makeContent(context))
                  item,
                DNDManButtonWidget(
                  onPressed: () {
                    // do something with the data
                  },
                  child: Text(
                    title,
                    style: GoogleFonts.notoSerif(
                        fontSize: 14
                    ),
                  ),
                  width: 200,
                  height: 55,
                  padding: const EdgeInsets.all(12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> makeContent(BuildContext context);
}
