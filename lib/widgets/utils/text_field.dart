import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  // ignore: prefer_function_declarations_over_variables
  static final FormFieldValidator<String> isBlank = (val) {
    if (val == null || val.isEmpty) {
      return "Value can not be empty";
    }
    return null;
  };

  final double? width;
  final String hintText;
  final EdgeInsets padding;
  final bool password;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final InputDecoration? decoration;

  const TextFieldWidget(
      {Key? key,
      this.width = 200,
      this.decoration,
      this.controller,
      required this.hintText,
      this.padding =
          const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      this.password = false,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: padding,
          child: SizedBox(
            width: width,
            child: TextFormField(
              decoration: decoration == null
                  ? InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: hintText,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                    )
                  : decoration!,
              controller: controller,
              validator: validator,
              obscureText: password,
              enableSuggestions: !password,
              autocorrect: !password,
            ),
          ),
        ),
      ),
    );
  }
}