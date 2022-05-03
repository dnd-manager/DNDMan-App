import 'package:dndman_app/pages/auth/auth.dart';
import 'package:dndman_app/pages/auth/signin.dart';
import 'package:dndman_app/widgets/utils/text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpPageWidget extends StatefulWidget {
  static const String route = "/auth/signup";

  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends AuthPageState<SignUpPageWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _SignUpPageState() : super("Sign Up");


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
  }

  @override
  List<Widget> makeContent(BuildContext context, Map<String, TextEditingController> content) {
    content.putIfAbsent("email", () => _emailController);
    content.putIfAbsent("username", () => _usernameController);
    content.putIfAbsent("password", () => _passwordController);

    return [
      TextFieldWidget(
        hintText: "Enter your email",
        controller: _emailController,
        validator: (val) {
          if (val == null || val.isEmpty || !EmailValidator.validate(val)) {
            return "Invalid Email Address";
          }
          return null;
        },
      ),
      TextFieldWidget(
        hintText: "Enter your desired username",
        controller: _usernameController,
        validator: TextFieldWidget.isBlank,
      ),
      TextFieldWidget(
        password: true,
        hintText: "Enter your desired password",
        controller: _passwordController,
        validator: TextFieldWidget.isBlank,
      ),
      TextFieldWidget(
        password: true,
        hintText: "Confirm your password",
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "Value can not be empty";
          }

          if (val != _passwordController.text) {
            return "2 Passwords entered are not the same";
          }

          return null;
        },
      ),
      TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            SignInPageWidget.route,
          );
        },
        child: const Text("Already have an account? Sign in here!"),
      ),
    ];
  }

  @override
  AuthRequestType getType() {
    return AuthRequestType.signupInternal;
  }
}
