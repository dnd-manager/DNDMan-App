import 'package:dndman_app/form_generator/annotations/decoration.dart';
import 'package:dndman_app/form_generator/annotations/icon.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/range.dart';
import 'package:dndman_app/form_generator/annotations/validator.dart';
import 'package:dndman_app/form_generator/annotations/padding.dart';
import 'package:dndman_app/main.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recase/recase.dart';
import 'package:reflectable/mirrors.dart';

class GeneratedForm extends StatelessWidget {
  final dynamic object;
  final Widget title;
  final String submitButtonText;

  final GlobalKey<FormState> _formKey = GlobalKey();
  final Map<String, dynamic> fields = {};

  GeneratedForm({Key? key,
    required this.object,
    required this.title,
    this.submitButtonText = "Submit"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var im = reflectInstance(object);
    var cm = im.type;

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 30), child: title),
          for (var item in _makeContent(context, object))
            item,
          DNDManButtonWidget(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                handleInput(cm);
              }
            },
            child: Text(
              submitButtonText,
              style: GoogleFonts.notoSerif(fontSize: 14),
            ),
            width: 200,
            height: 75,
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 12,
              bottom: 30,
            ),
            flat: false,
          ),
        ],
      ),
    );
  }

  List<Widget> _makeContent(BuildContext context, dynamic object) {
    List<Widget> widgets = [];

    var im = reflectInstance(object);
    var cm = im.type;

    for (var i in cm.declarations.keys) {
      var variableMirror = cm.declarations[i];
      if (variableMirror != null && variableMirror is VariableMirror) {
        var annotations = variableMirror.metadata;
        var value = im.invokeGetter(variableMirror.simpleName);
        if (value != null) {
          FormDecoration? decoration;
          FormValidator? validator;
          FormRange? formRange;
          FormPadding formPadding;

          try {
            decoration = annotations.firstWhere((element) => element is FormDecoration) as FormDecoration;
          } on StateError {
            decoration = null;
          }

          try {
            validator = annotations.firstWhere((element) => element is FormValidator) as FormValidator;
          } on StateError {
            validator = null;
          }

          try {
            formRange = annotations.firstWhere((element) => element is FormRange) as FormRange;
          } on StateError {
            formRange = null;
          }

          try {
            formPadding = annotations.firstWhere((element) => element is FormPadding) as FormPadding;
          } on StateError {
            formPadding = const FormPadding(EdgeInsets.all(8));
          }

          if (value is String) { // if the field is a string
            widgets.add(createTextField(
              formPadding,
              decoration,
              validator,
              value,
              variableMirror,
            ));
          } else if (value is int || value is double) {
            if (formRange == null) {
              widgets.add(createTextField(
                formPadding,
                decoration,
                validator,
                value,
                variableMirror,
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
          } else if (value is RangeValues) {
            fields.putIfAbsent(variableMirror.simpleName, () => value);

            widgets.add(RangeSlider(
              values: fields[variableMirror.simpleName],
              onChanged: (val) {
                fields[variableMirror.simpleName] = val;
              },
              min: value.start,
              max: value.end,
            ));
          } else if (value is bool) { // if field is boolean, we use a checkbox
            FormBoolSecondary? secondary;
            try {
              secondary = annotations.firstWhere((element) => element is FormBoolSecondary) as FormBoolSecondary;
            } on StateError {
              secondary = null;
            }
            fields.putIfAbsent(variableMirror.simpleName, () => value);
            widgets.add(Padding(
              padding: formPadding.padding,
              child: StatefulBuilder(
                builder: (context, setState) => CheckboxListTile(
                  title: Text(
                    variableMirror.simpleName.titleCase,
                    style: GoogleFonts.notoSerif(
                      fontSize: 16,
                    ),
                  ),
                  secondary: secondary?.secondary,
                  onChanged: (value) {
                    setState(() => fields[variableMirror.simpleName] = value);
                  },
                  value: fields[variableMirror.simpleName],
                ),
              ),
            ));
          } else if (value is Enum) { // if field is enum, we use a dropdown
            FormEnumOptions? options;
            try {
              options = annotations.firstWhere((element) => element is FormEnumOptions) as FormEnumOptions;
            } on StateError {
              options = null;
            }
            fields.putIfAbsent(variableMirror.simpleName, () => value);
            widgets.add(Padding(
              padding: formPadding.padding,
              child: DropdownButtonFormField<dynamic>(
                items: [
                  if (options != null)
                    for (Enum option in options.options)
                      DropdownMenuItem(
                        child: Text(
                          option.name.titleCase,
                          style: GoogleFonts.notoSerif(),
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
            ));
          } else { // if it is an object, we generate it again
            widgets.addAll(_makeContent(context, value));
          }
        }
      }
    }

    return widgets;
  }

  Widget createTextField(FormPadding formPadding, FormDecoration? decoration, FormValidator? validator, Object value, VariableMirror variableMirror) {
    var controller = TextEditingController();
    fields.putIfAbsent(variableMirror.simpleName, () => controller);
    return Padding(
      padding: formPadding.padding,
      child: TextFormField(
        decoration: decoration == null
            ? InputDecoration(
          border: const OutlineInputBorder(),
          labelText: value
              .toString()
              .isEmpty ? variableMirror.simpleName.titleCase : value.toString(),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          labelStyle: GoogleFonts.notoSerif(),
        ) : decoration.decoration,
        validator: validator?.validator,
        controller: controller,
        style: GoogleFonts.notoSerif(),
      ),
    );
  }

  void handleInput(ClassMirror classMirror) {
    for (String key in fields.keys) {
      dynamic value = fields[key];
    }
  }
}