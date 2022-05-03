import 'package:dndman_app/api/api_client.dart';
import 'package:dndman_app/api/data/auth/user_create.dart';
import 'package:dndman_app/api/data/auth/user_signin.dart';
import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/pages/core/profile.dart';
import 'package:dndman_app/utils/session.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AuthStateHandler {
  void handleState(BuildContext context, AuthRequestType requestType, Map<String, TextEditingController> textContents) async {
    switch (requestType) {
      case AuthRequestType.signinInternal:
        var email = textContents["email"]!.text;
        var password = textContents["password"]!.text;

        final sessionID = await APIClient.instance.signInUser(
          context,
          UserSigninRequest(
            email: email,
            password: password,
          ),
        );

        await SessionManagement.createSession(sessionID);
        Navigator.pushReplacementNamed(context, ProfilePageWidget.route);

        break;
      case AuthRequestType.signupInternal:
        var email = textContents["email"]!.text;
        var username = textContents["username"]!.text;
        var password = textContents["password"]!.text;

        await APIClient.instance.createUser(context, UserCreate(
          email: email,
          username: username,
          password: password,
        ));
        Navigator.pushReplacementNamed(context, SignInPageWidget.route);
        break;
    }
  }
}

enum AuthRequestType {
  signupInternal,
  signinInternal,
}

abstract class AuthPageState<T extends StatefulWidget> extends State<T> with AuthStateHandler {
  final String title;
  final GlobalKey<FormState> _authFormKey = GlobalKey(debugLabel: "auth_form_key");
  final Map<String, TextEditingController> _textContents = {};

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
            child: Form(
              key: _authFormKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      title,
                      style: DNDTextStyle.displayText(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      softWrap: true,
                    ),
                  ),
                  for (var item in makeContent(context, _textContents))
                    item,
                  DNDManButtonWidget(
                    onPressed: () {
                      if (_authFormKey.currentState!.validate()) {
                        handleState(context, getType(), _textContents);
                      }
                    },
                    child: Text(
                      title,
                      style: DNDTextStyle.normalText(
                          fontSize: 14
                      ),
                    ),
                    width: 200,
                    height: 75,
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      top: 12,
                      bottom: 30,
                    ),
                    flat: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  AuthRequestType getType();

  List<Widget> makeContent(BuildContext context, Map<String, TextEditingController> contents);
}
