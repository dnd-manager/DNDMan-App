import 'package:dndman_app/dnd/dnd.dart';
import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:dndman_app/widgets/utils/dice.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class DiceRollFormGeneratorComponent with FormGeneratorComponent<DiceRoll> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormValidator? validator, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    if (value is DiceRoll) {
      fields.putIfAbsent(variableMirror.simpleName, () => value);

      widgets.add(DiceWidget(
        onChanged: (val) {
          var orig = fields[variableMirror.simpleName];
          fields[variableMirror.simpleName] = DiceRoll.copy(orig, val);
        },
        maxValue: (fields[variableMirror.simpleName] as DiceRoll).max,
        maxTryCount: (fields[variableMirror.simpleName] as DiceRoll).maxTryCount,
      ));
    }
  }
}