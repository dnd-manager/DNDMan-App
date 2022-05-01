import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class NumberFormGeneratorComponent with FormGeneratorComponent {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    if (formRange == null) {
      widgets.add(createTextField(
        formPadding,
        decoration,
        validator,
        value,
        variableMirror,
        fields,
      ));
    } else {
      fields.putIfAbsent(variableMirror.simpleName, () => value);

      widgets.add(Padding(
        padding: formPadding.padding,
        child: Slider(
          value: fields[variableMirror.simpleName],
          onChanged: (val) {
            fields[variableMirror.simpleName] = val;
          },
          min: formRange.min,
          max: formRange.max,
        ),
      ));
    }
  }

  @override
  void deserialize(Map<String, dynamic> fields) {
    // TODO: implement deserialize
  }

  @override
  bool serializationSelector(Object value) {
    return value is int || value is double;
  }

  @override
  bool deserializationSelector(value) {
    // TODO: implement deserializationSelector
    throw UnimplementedError();
  }
}