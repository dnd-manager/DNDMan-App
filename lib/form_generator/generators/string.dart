import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class StringFormGeneratorComponent with FormGeneratorComponent<String> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    widgets.add(createTextField(
      formPadding,
      decoration,
      validator,
      value,
      variableMirror,
      fields,
    ));
  }

  @override
  void deserialize(Map<String, dynamic> fields, String origSimpleName, dynamic origValue) {
    fields.putIfAbsent(origSimpleName, () => origValue.text);
  }

  @override
  bool deserializationSelector(dynamic value) {
    return value is TextEditingController && double.tryParse(value.text) == null && int.tryParse(value.text) == null;
  }
}