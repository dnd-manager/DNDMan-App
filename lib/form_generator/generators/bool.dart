import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/icon.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';
import 'package:reflectable/mirrors.dart';

class BoolFormGeneratorComponent with FormGeneratorComponent<bool> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    FormBoolSecondary? secondary;
    try {
      secondary = annotations.firstWhere((element) => element is FormBoolSecondary) as FormBoolSecondary;
    } on StateError {
      secondary = null;
    }
    fields.putIfAbsent(variableMirror.simpleName, () => value);
    widgets.add(Padding(
      padding: formPadding.padding,
      child: StatefulBuilder(
        builder: (context, setState) => CheckboxListTile(
          title: Text(
            variableMirror.simpleName.titleCase,
            style: GoogleFonts.notoSerif(
              fontSize: 16,
            ),
          ),
          secondary: secondary?.secondary,
          onChanged: (value) {
            setState(() => fields[variableMirror.simpleName] = value);
          },
          value: fields[variableMirror.simpleName],
        ),
      ),
    ));
  }
}