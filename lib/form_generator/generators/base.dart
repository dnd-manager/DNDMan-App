import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    FormValidator? validator,
    FormRange? formRange,
    FormPadding formPadding,
    List<Object> annotations,
  );

  void deserialize(Map<String, dynamic> fields, String origSimpleName, dynamic origValue) {
    fields.putIfAbsent(origSimpleName, () => origValue);
  }

  @protected
  Widget createTextField(
    FormPadding formPadding,
    FormDecoration? decoration,
    FormValidator? validator,
    Object value,
    VariableMirror variableMirror,
    Map<String, dynamic> fields,
  ) {
    var controller = TextEditingController();
    fields.putIfAbsent(variableMirror.simpleName, () => controller);
    return Padding(
      padding: formPadding.padding,
      child: TextFormField(
        decoration: decoration == null
            ? InputDecoration(
                border: const OutlineInputBorder(),
                labelText: value.toString().isEmpty || value is int || value is double
                    ? variableMirror.simpleName.titleCase
                    : value.toString(),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                labelStyle: GoogleFonts.notoSerif(),
              )
            : decoration.decoration,
        validator: validator?.validator,
        controller: controller,
        style: GoogleFonts.notoSerif(),
      ),
    );
  }
}
