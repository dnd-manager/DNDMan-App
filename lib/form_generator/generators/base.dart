import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:flutter/widgets.dart';
import 'package:reflectable/mirrors.dart';

mixin FormGeneratorComponent {
  bool selector(Object value);

  void buildWidget(
    Object value,
    VariableMirror variableMirror,
    List<Widget> widgets,
    Map<String, dynamic> fields,
    FormDecoration? decoration,
    FormValidator? validator,
    FormRange? formRange,
    FormPadding formPadding,
  );
}
