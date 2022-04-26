import 'package:dndman_app/pages/auth/auth.dart';
import 'package:dndman_app/utils/navigator.dart';
import 'package:dndman_app/widgets/utils/text_field.dart';
import 'package:flutter/material.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends AuthPageState<SignUpPageWidget> {
  _SignUpPageState() : super("Sign Up");

  @override
  List<Widget> makeContent(BuildContext context) {
    return [
      TextFieldWidget(
        width: 200,
        height: 40,
        hintText: "Enter your email",
        validator: (val) {
          if (val == null || val.isEmpty || TextFieldWidget.validEmail.hasMatch(val)) {
            return "Invalid Email Address";
          }
          return null;
        },
      ),
      TextFieldWidget(
        width: 200,
        height: 40,
        hintText: "Enter your username",
        validator: TextFieldWidget.isBlank,
      ),
      TextFieldWidget(
        width: 200,
        height: 40,
        password: true,
        hintText: "Enter your password",
        validator: TextFieldWidget.isBlank,
      ),
      TextButton(
        onPressed: () {
          navigatorPushOrPop(
            context,
            "/auth/signin",
          );
        },
        child: const Text("Already have an account? Sign in here!"),
      ),
    ];
  }
}
