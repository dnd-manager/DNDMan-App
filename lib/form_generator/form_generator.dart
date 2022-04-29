import 'package:dndman_app/form_generator/generatable.dart';
import 'package:flutter/material.dart';

class GeneratedForm<T extends FormGeneratable> extends StatelessWidget {
  final T object;
  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String, TextEditingController> _textContents = {};

  GeneratedForm({Key? key, required this.object}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: object.title(context)
          ),
          for (var item in makeContent(context, _textContents))
            item,
          object.submitButton(context, _textContents),
        ],
      ),
    );
  }

  List<Widget> makeContent(BuildContext context, textContents) {

  }
}
