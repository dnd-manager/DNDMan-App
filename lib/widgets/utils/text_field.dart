import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  static final RegExp validEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final FormFieldValidator<String> isBlank = (val) {
    if (val == null || val.isEmpty) {
      return "Value can not be empty";
    }
    return null;
  };

  final double? width;
  final double? height;
  final String hintText;
  final EdgeInsets padding;
  final bool password;
  final FormFieldValidator<String>? validator;

  const TextFieldWidget({Key? key, this.width, this.height, required this.hintText, this.padding = const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5), this.password = false, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: padding,
          child: SizedBox(
            width: width,
            height: height,
            child: TextFormField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: hintText,
              ),
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
