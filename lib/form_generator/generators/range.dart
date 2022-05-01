import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class RangeFormGeneratorComponent with FormGeneratorComponent<RangeValues> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    if (value is RangeValues) {
      fields.putIfAbsent(variableMirror.simpleName, () => value);

      widgets.add(RangeSlider(
        values: fields[variableMirror.simpleName],
        onChanged: (val) {
          fields[variableMirror.simpleName] = val;
        },
        min: value.start,
        max: value.end,
      ));
    }
  }
}