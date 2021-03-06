import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class NumberFormGeneratorComponent with FormGeneratorComponent {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    if (formRange == null) {
      widgets.add(createTextField(
        formPadding,
        decoration,
        value,
        variableMirror,
        fields,
        annotations,
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
  bool serializationSelector(Object value) {
    return value is int || value is double;
  }

  @override
  bool deserializationSelector(value) {
    return (value is int || value is double) || (value is TextEditingController && (double.tryParse(value.text) != null || int.tryParse(value.text) != null));
  }

  @override
  void deserialize(Map<String, dynamic> fields, String origSimpleName, dynamic origValue) {
    if (origValue is TextEditingController) {
      fields.putIfAbsent(origSimpleName, () => double.tryParse(origValue.text));
      return;
    }

    fields.putIfAbsent(origSimpleName, () => origValue);
  }
}