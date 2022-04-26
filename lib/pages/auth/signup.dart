import 'package:dndman_app/pages/auth/auth.dart';
import 'package:flutter/material.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends AuthPageState<SignUpPageWidget> {
  _SignUpPageState() : super("Sign Up");

  @override
  List<Widget> makeContent() {
    return [

    ];
  }
}
