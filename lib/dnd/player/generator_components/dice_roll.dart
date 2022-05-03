import 'package:dndman_app/dnd/player/character_creation.dart';
import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:dndman_app/widgets/utils/dice.dart';
import 'package:flutter/material.dart';
import 'package:reflectable/mirrors.dart';

class DiceRollFormGeneratorComponent
    with FormGeneratorComponent<FrontDiceRoll> {
  @override
  void serialize(
      Object value,
      VariableMirror variableMirror,
      List<Widget> widgets,
      Map<String, dynamic> fields,
      FormDecoration? decoration,
      FormRange? formRange,
      FormPadding formPadding,
      List<Object> annotations,
      ) {
    if (value is FrontDiceRoll) {
      fields.putIfAbsent(variableMirror.simpleName, () => value);

      widgets.add(
        LayoutBuilder(
          builder: (ctx, constraints) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: formPadding.padding,
              child: Row(
                children: [
                  DiceWidget(
                    onChanged: (val) {
                      var orig = fields[variableMirror.simpleName];
                      fields[variableMirror.simpleName] = FrontDiceRoll.copy(orig, val);
                    },
                    maxValue: (fields[variableMirror.simpleName] as FrontDiceRoll).max,
                    maxTryCount:
                        (fields[variableMirror.simpleName] as FrontDiceRoll).maxTryCount,
                    width: constraints.maxWidth / 8,
                    height: constraints.maxWidth / 8,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
