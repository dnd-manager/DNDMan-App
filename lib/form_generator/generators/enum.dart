import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';
import 'package:reflectable/mirrors.dart';

class EnumFormGeneratorComponent with FormGeneratorComponent<Enum> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    FormEnumOptions? options;
    try {
      options = annotations.firstWhere((element) => element is FormEnumOptions) as FormEnumOptions;
    } on StateError {
      options = null;
    }
    fields.putIfAbsent(variableMirror.simpleName, () => value);
    widgets.add(Padding(
      padding: formPadding.padding,
      child: DropdownButtonFormField<dynamic>(
        items: [
          if (options != null)
            for (Enum option in options.options)
              DropdownMenuItem(
                child: Text(
                  option.name.titleCase,
                  style: GoogleFonts.notoSerif(),
                ),
                value: option,
              ),
        ],
        value: fields[variableMirror.simpleName],
        onChanged: (value) {
          fields[variableMirror.simpleName] = value;
        },
        decoration: decoration?.decoration,
      ),
    ));
  }
}