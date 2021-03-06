// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:dndman_app/api/dndman/data/dnd/dnd_enums.dart' as prefix2;
import 'package:dndman_app/dnd/player/character_creation.dart' as prefix1;
import 'package:dndman_app/form_generator/annotations/header.dart' as prefix3;
import 'package:dndman_app/form_generator/annotations/options.dart' as prefix4;
import 'package:dndman_app/form_generator/annotations/reflector.dart'
    as prefix0;
import 'package:dndman_app/form_generator/annotations/space.dart' as prefix5;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.ClassReflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'FrontCharacterPart1',
            r'.FrontCharacterPart1',
            7,
            0,
            const prefix0.ClassReflector(),
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 20],
            const <int>[
              21,
              22,
              23,
              24,
              25,
              10,
              11,
              12,
              13,
              14,
              15,
              16,
              17,
              18,
              19
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => (
                      {playerName = "",
                      characterName = "",
                      background = prefix2.DNDCharacterBackgroundTypes.acolyte,
                      alignment = prefix2.DNDCharacterAlignmentTypes.lawfulGood,
                      assign15 = prefix2.DNDCharacterAbilityTypes.strength,
                      assign14 = prefix2.DNDCharacterAbilityTypes.dexterity,
                      assign13 = prefix2.DNDCharacterAbilityTypes.constitution,
                      assign12 = prefix2.DNDCharacterAbilityTypes.intelligence,
                      assign10 = prefix2.DNDCharacterAbilityTypes.wisdom,
                      assign8 = prefix2.DNDCharacterAbilityTypes.charisma}) =>
                  b
                      ? prefix1.FrontCharacterPart1(
                          alignment: alignment,
                          assign10: assign10,
                          assign12: assign12,
                          assign13: assign13,
                          assign14: assign14,
                          assign15: assign15,
                          assign8: assign8,
                          background: background,
                          characterName: characterName,
                          playerName: playerName)
                      : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(
            r'playerName',
            33797,
            0,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const <Object>[const prefix3.FormHeader("Basic Information")]),
        r.VariableMirrorImpl(r'characterName', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'background', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterBackgroundTypes.values)
        ]),
        r.VariableMirrorImpl(r'alignment', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAlignmentTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign15', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix5.FormSpace(60),
          const prefix3.FormHeader("Ability Scores"),
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign14', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign13', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign12', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign10', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.VariableMirrorImpl(r'assign8', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix4.FormOptions(prefix2.DNDCharacterAbilityTypes.values)
        ]),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 0, 10),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 1, 11),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 2, 12),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 3, 13),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 4, 14),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 5, 15),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 6, 16),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 7, 17),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 8, 18),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 9, 19),
        r.MethodMirrorImpl(
            r'',
            128,
            0,
            -1,
            -1,
            -1,
            null,
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
            const prefix0.ClassReflector(),
            const <Object>[
              const prefix5.FormSpace(60),
              const prefix3.FormHeader("Ability Scores")
            ]),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, -1, -1, null, const <int>[10],
            const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'toString', 131074, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1, null,
            const <int>[11], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'playerName',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            "",
            #playerName),
        r.ParameterMirrorImpl(
            r'characterName',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            "",
            #characterName),
        r.ParameterMirrorImpl(
            r'background',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterBackgroundTypes.acolyte,
            #background),
        r.ParameterMirrorImpl(
            r'alignment',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAlignmentTypes.lawfulGood,
            #alignment),
        r.ParameterMirrorImpl(
            r'assign15',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.strength,
            #assign15),
        r.ParameterMirrorImpl(
            r'assign14',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.dexterity,
            #assign14),
        r.ParameterMirrorImpl(
            r'assign13',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.constitution,
            #assign13),
        r.ParameterMirrorImpl(
            r'assign12',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.intelligence,
            #assign12),
        r.ParameterMirrorImpl(
            r'assign10',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.wisdom,
            #assign10),
        r.ParameterMirrorImpl(
            r'assign8',
            48134,
            20,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAbilityTypes.charisma,
            #assign8),
        r.ParameterMirrorImpl(
            r'other',
            32774,
            21,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            23,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            null,
            null)
      ],
      <Type>[prefix1.FrontCharacterPart1],
      1,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'playerName': (dynamic instance) => instance.playerName,
        r'characterName': (dynamic instance) => instance.characterName,
        r'background': (dynamic instance) => instance.background,
        r'alignment': (dynamic instance) => instance.alignment,
        r'assign15': (dynamic instance) => instance.assign15,
        r'assign14': (dynamic instance) => instance.assign14,
        r'assign13': (dynamic instance) => instance.assign13,
        r'assign12': (dynamic instance) => instance.assign12,
        r'assign10': (dynamic instance) => instance.assign10,
        r'assign8': (dynamic instance) => instance.assign8
      },
      {},
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
