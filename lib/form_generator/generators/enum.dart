import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/generators/base.dart';
import 'package:dndman_app/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';
import 'package:reflectable/mirrors.dart';

class EnumFormGeneratorComponent with FormGeneratorComponent<Enum> {
  @override
  void serialize(Object value, VariableMirror variableMirror, List<Widget> widgets, Map<String, dynamic> fields, FormDecoration? decoration, FormRange? formRange, FormPadding formPadding, List<Object> annotations) {
    FormOptions? options;
    try {
      options = annotations.firstWhere((element) => element is FormOptions) as FormOptions;
    } on StateError {
      options = null;
    }
    fields.putIfAbsent(variableMirror.simpleName, () => value);
    widgets.add(LayoutBuilder(
      builder: (ctx, constraints) => Padding(
        padding: formPadding.padding,
        child: Row(
          children: [
            Text(
              variableMirror.simpleName.titleCase + ": ",
              style: DNDTextStyle.normalText(
                fontSize: constraints.maxWidth / 25,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: DropdownButtonFormField<dynamic>(
                    items: [
                      if (options != null)
                        for (Enum option in options.options)
                          DropdownMenuItem(
                            child: Text(
                              option.name.titleCase,
                              style: DNDTextStyle.normalText(),
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
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}