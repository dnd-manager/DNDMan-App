import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/hide.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/main.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reflectable/mirrors.dart';

class GeneratedForm extends StatelessWidget {
  final dynamic object;
  final String submitButtonText;
  final Function(Map<String, dynamic> fields) onSubmit;
  final Widget? submitButton;

  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String, dynamic> fields = {};

  GeneratedForm({
    Key? key,
    required this.object,
    required this.onSubmit,
    this.submitButtonText = "Submit",
    this.submitButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var im = reflectInstance(object);
    var cm = im.type;

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          for (var item in _makeContent(context, object)) item,
          submitButton == null ? DNDManButtonWidget(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                onSubmit(handleInput(cm));
              }
            },
            child: Text(
              submitButtonText,
              style: GoogleFonts.notoSerif(fontSize: 14),
            ),
            width: 200,
            height: 75,
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: 30,
            ),
            flat: false,
          ) : submitButton!,
        ],
      ),
    );
  }

  List<Widget> _makeContent(BuildContext context, dynamic object) {
    List<Widget> widgets = [];

    var im = reflectInstance(object);
    var cm = im.type;

    for (var i in cm.declarations.keys) {
      var variableMirror = cm.declarations[i];
      if (variableMirror != null && variableMirror is VariableMirror) {
        var annotations = variableMirror.metadata;
        var value = im.invokeGetter(variableMirror.simpleName);

        try {
          annotations.firstWhere((element) => element is FormHidden) as FormHidden;
          continue;
        } catch (_) {
        }

        if (value != null) {
          FormDecoration? decoration;
          FormValidator? validator;
          FormRange? formRange;
          FormPadding formPadding;

          try {
            decoration = annotations.firstWhere((element) => element is FormDecoration) as FormDecoration;
          } on StateError {
            decoration = null;
          }

          try {
            validator = annotations.firstWhere((element) => element is FormValidator) as FormValidator;
          } on StateError {
            validator = null;
          }

          try {
            formRange = annotations.firstWhere((element) => element is FormRange) as FormRange;
          } on StateError {
            formRange = null;
          }

          try {
            formPadding = annotations.firstWhere((element) => element is FormPadding) as FormPadding;
          } on StateError {
            formPadding = const FormPadding(EdgeInsets.all(8));
          }

          try {
            var comp = formGeneratorComponents.firstWhere((element) => element.serializationSelector(value));
            comp.serialize(
              value,
              variableMirror,
              widgets,
              fields,
              decoration,
              validator,
              formRange,
              formPadding,
              annotations,
            );
          } on StateError {
            // if there is no pre-defined form generator component, so it's probably a custom class, so we deserialize it as well
            widgets.addAll(_makeContent(context, value));
          }
        }
      }
    }

    return widgets;
  }

  Map<String, dynamic> handleInput(ClassMirror classMirror) {
    Map<String, dynamic> output = {};

    for (String key in fields.keys) {
      dynamic value = fields[key];
      try {
        var comp = formGeneratorComponents.firstWhere((element) => element.deserializationSelector(value));
        comp.deserialize(output, key, value);
      } on StateError {
        output.putIfAbsent(key, () => value);
      }
    }

    return output;
  }
}
