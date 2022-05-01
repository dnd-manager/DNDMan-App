import 'package:dndman_app/form_generator/annotations/icon.dart';
import 'package:dndman_app/form_generator/annotations/options.dart';
import 'package:dndman_app/form_generator/annotations/reflector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@reflector
class DNDCharacter {
  final String playerName;
  final String characterName;
  final TestClass classz;
  @FormBoolSecondary(Icon(Icons.abc))
  final bool someOption;
  @FormEnumOptions(SomeEnum.values)
  final SomeEnum val;

  const DNDCharacter({this.classz = const TestClass(), this.val = SomeEnum.enum1, this.playerName = "Enter Player Name", this.characterName = "Enter Character Name", this.someOption = false});
}

@reflector
class TestClass {
  final String test;
  final bool test2;

  const TestClass({this.test = "", this.test2 = false});
}

enum SomeEnum {
  enum1,
  enum2,
}