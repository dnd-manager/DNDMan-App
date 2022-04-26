import 'package:dndman_app/pages/auth/auth.dart';
import 'package:dndman_app/utils/navigator.dart';
import 'package:dndman_app/widgets/utils/text_field.dart';
import 'package:flutter/material.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  State<SignInPageWidget> createState() => _SignInPageState();
}

class _SignInPageState extends AuthPageState<SignInPageWidget> {
  _SignInPageState() : super("Sign In");

  @override
  List<Widget> makeContent(BuildContext context) {
    return [
      const TextFieldWidget(
        width: 200,
        height: 40,
        hintText: "Enter your username",
      ),
      const TextFieldWidget(
        width: 200,
        height: 40,
        password: true,
        hintText: "Enter your password",
      ),
      TextButton(
        onPressed: () {
          navigatorPushOrPop(
            context,
            "/auth/signup",
          );
        },
        child: const Text("Don't have an account? Sign up here!"),
      ),
    ];
  }
}
