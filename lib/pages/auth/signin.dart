import 'package:dndman_app/pages/auth/auth.dart';
import 'package:flutter/material.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  State<SignInPageWidget> createState() => _SignInPageState();
}

class _SignInPageState extends AuthPageState<SignInPageWidget> {
  _SignInPageState() : super("Sign In");

  @override
  List<Widget> makeContent() {
    return [

    ];
  }
}
