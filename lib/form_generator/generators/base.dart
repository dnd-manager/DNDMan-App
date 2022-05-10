import 'package:dndman_app/form_generator/annotations/constant.dart';
import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:reflectable/mirrors.dart';

mixin FormGeneratorComponent<T> {
  bool serializationSelector(Object value) {
    return value is T;
  }

  bool deserializationSelector(dynamic value) {
    return value is T;
  }

  void serialize(
    Object value,
    VariableMirror variableMirror,
    List<Widget> widgets,
    Map<String, dynamic> fields,
    FormDecoration? decoration,
    FormRange? formRange,
    FormPadding formPadding,
    List<Object> annotations,
  );

  void deserialize(
      Map<String, dynamic> fields, String origSimpleName, dynamic origValue) {
    fields.putIfAbsent(origSimpleName, () => origValue);
  }

  @protected
  Widget createTextField(
    FormPadding formPadding,
    FormDecoration? decoration,
    Object value,
    VariableMirror variableMirror,
    Map<String, dynamic> fields,
    List<Object> annotations,
  ) {
    FormConstant? formConstant;

    try {
      formConstant = annotations.firstWhere((element) => element is FormConstant) as FormConstant;
    } on StateError {
      formConstant = null;
    }

    var controller = TextEditingController();
    fields.putIfAbsent(variableMirror.simpleName, () => controller);
    return Padding(
      padding: formPadding.padding,
      child: formConstant == null ? TextFormField(
        decoration: decoration == null
            ? InputDecoration(
          border: const OutlineInputBorder(),
          labelText:
          value.toString().isEmpty || value is int || value is double
              ? variableMirror.simpleName.titleCase
              : value.toString(),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          labelStyle: DNDTextStyle.normalText(),
        )
            : decoration.decoration,
        validator: value is int || value is double
            ? (val) {
          if (val == null || val.isEmpty) {
            return null;
          }
          if (int.tryParse(val) != null || double.tryParse(val) != null) {
            return null;
          }
          return "Value should be a number";
        }
            : null,
        controller: controller,
        style: DNDTextStyle.normalText(),
      ) : Text(
        value.toString(),
        style: DNDTextStyle.normalText(),
      ),
    );
  }
}
