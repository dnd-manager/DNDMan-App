import 'package:dndman_app/pages/auth/auth.dart';
import 'package:dndman_app/widgets/utils/text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignUpPageWidget extends StatefulWidget {
  const SignUpPageWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends AuthPageState<SignUpPageWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

  _SignUpPageState() : super("Sign Up");

  @override
  List<Widget> makeContent(BuildContext context, Map<String, TextEditingController> content) {
    content.putIfAbsent("email", () => _emailController);
    content.putIfAbsent("username", () => _usernameController);
    content.putIfAbsent("password", () => _passwordController);
    content.putIfAbsent("passwordConfirm", () => _passwordConfirmController);

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
        controller: _passwordConfirmController,
        validator: TextFieldWidget.isBlank,
      ),
      TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            "/auth/signin",
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
