import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AuthPageState<T extends StatefulWidget> extends State<T> {
  final String title;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  AuthPageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _key,
        child: Column(
            children: [
              Text(title),
              for (var item in makeContent())
                item,
              DNDManButtonWidget(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      // do something with the data
                    }
                  },
                  child: Text(
                    title,
                    style: GoogleFonts.notoSerif(
                      fontSize: 14
                    ),
                  ),
              ),
            ],
          ),
      ),
    );
  }

  List<Widget> makeContent();
}
