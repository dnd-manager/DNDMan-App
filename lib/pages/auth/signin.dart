import 'package:dndman_app/pages/auth/auth.dart';
import 'package:dndman_app/widgets/utils/text_field.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignInPageWidget extends StatefulWidget {
  const SignInPageWidget({Key? key}) : super(key: key);

  @override
  State<SignInPageWidget> createState() => _SignInPageState();
}

class _SignInPageState extends AuthPageState<SignInPageWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _SignInPageState() : super("Sign In");

  @override
  List<Widget> makeContent(BuildContext context, Map<String, TextEditingController> content) {
    content.putIfAbsent("email", () => _emailController);
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
        password: true,
        hintText: "Enter your password",
        controller: _passwordController,
        validator: TextFieldWidget.isBlank,
      ),
      TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            "/auth/signup",
          );
        },
        child: const Text("Don't have an account? Sign up here!"),
      ),
    ];
  }

  @override
  AuthRequestType getType() {
    return AuthRequestType.signinInternal;
  }
}
