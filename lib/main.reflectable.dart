// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:dndman_app/api/data/dnd/dnd_enums.dart' as prefix2;
import 'package:dndman_app/dnd/player/character_creation.dart' as prefix1;
import 'package:dndman_app/form_generator/annotations/options.dart' as prefix3;
import 'package:dndman_app/form_generator/annotations/reflector.dart'
    as prefix0;

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
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 27],
            const <int>[
              28,
              29,
              30,
              31,
              32,
              15,
              16,
              17,
              18,
              19,
              20,
              21,
              22,
              23,
              24,
              25,
              26
            ],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => (
                      {playerName = "",
                      characterName = "",
                      className = "",
                      raceName = "",
                      background = prefix2.DNDCharacterBackgroundTypes.acolyte,
                      alignment = prefix2.DNDCharacterAlignmentTypes.lawfulGood,
                      strength = const prefix1.FrontDiceRoll(),
                      dexterity = const prefix1.FrontDiceRoll(),
                      constitution = const prefix1.FrontDiceRoll(),
                      intelligence = const prefix1.FrontDiceRoll(),
                      wisdom = const prefix1.FrontDiceRoll(),
                      charisma = const prefix1.FrontDiceRoll()}) =>
                  b
                      ? prefix1.FrontCharacterPart1(
                          alignment: alignment,
                          background: background,
                          characterName: characterName,
                          charisma: charisma,
                          className: className,
                          constitution: constitution,
                          dexterity: dexterity,
                          intelligence: intelligence,
                          playerName: playerName,
                          raceName: raceName,
                          strength: strength,
                          wisdom: wisdom)
                      : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null),
        r.NonGenericClassMirrorImpl(
            r'FrontDiceRoll',
            r'.FrontDiceRoll',
            7,
            1,
            const prefix0.ClassReflector(),
            const <int>[12, 13, 14, 36, 37],
            const <int>[28, 29, 30, 31, 32, 33, 34, 35],
            const <int>[],
            -1,
            {},
            {},
            {
              r'': (bool b) => ({max = 20, maxTryCount = 1, value = 20}) => b
                  ? prefix1.FrontDiceRoll(
                      max: max, maxTryCount: maxTryCount, value: value)
                  : null,
              r'copy': (bool b) => (other, value) =>
                  b ? prefix1.FrontDiceRoll.copy(other, value) : null
            },
            -1,
            -1,
            const <int>[-1],
            const <Object>[prefix0.reflector],
            null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'playerName', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'characterName', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'className', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'raceName', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'background', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix3.FormOptions(prefix2.DNDCharacterBackgroundTypes.values)
        ]),
        r.VariableMirrorImpl(r'alignment', 33797, 0,
            const prefix0.ClassReflector(), -1, -1, -1, null, const <Object>[
          const prefix3.FormOptions(prefix2.DNDCharacterAlignmentTypes.values)
        ]),
        r.VariableMirrorImpl(r'strength', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'dexterity', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'constitution', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'intelligence', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'wisdom', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'charisma', 33797, 0,
            const prefix0.ClassReflector(), 1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'max', 33797, 1, const prefix0.ClassReflector(),
            -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'maxTryCount', 33797, 1,
            const prefix0.ClassReflector(), -1, -1, -1, null, const []),
        r.VariableMirrorImpl(r'value', 33797, 1, const prefix0.ClassReflector(),
            -1, -1, -1, null, const []),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 0, 15),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 1, 16),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 2, 17),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 3, 18),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 4, 19),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 5, 20),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 6, 21),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 7, 22),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 8, 23),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 9, 24),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 10, 25),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 11, 26),
        r.MethodMirrorImpl(
            r'',
            128,
            0,
            -1,
            -1,
            -1,
            null,
            const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11],
            const prefix0.ClassReflector(),
            const []),
        r.MethodMirrorImpl(r'==', 131074, -1, -1, -1, -1, null, const <int>[12],
            const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'toString', 131074, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1, null,
            const <int>[13], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'hashCode', 131075, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, -1, -1, null,
            const <int>[], const prefix0.ClassReflector(), const []),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 12, 33),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 13, 34),
        r.ImplicitGetterMirrorImpl(const prefix0.ClassReflector(), 14, 35),
        r.MethodMirrorImpl(r'', 128, 1, -1, -1, -1, null,
            const <int>[14, 15, 16], const prefix0.ClassReflector(), const []),
        r.MethodMirrorImpl(r'copy', 1, 1, -1, -1, -1, null, const <int>[17, 18],
            const prefix0.ClassReflector(), const [])
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'playerName',
            48134,
            27,
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
            27,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            "",
            #characterName),
        r.ParameterMirrorImpl(
            r'className',
            48134,
            27,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            "",
            #className),
        r.ParameterMirrorImpl(
            r'raceName',
            48134,
            27,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            "",
            #raceName),
        r.ParameterMirrorImpl(
            r'background',
            48134,
            27,
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
            27,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            prefix2.DNDCharacterAlignmentTypes.lawfulGood,
            #alignment),
        r.ParameterMirrorImpl(
            r'strength',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #strength),
        r.ParameterMirrorImpl(
            r'dexterity',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #dexterity),
        r.ParameterMirrorImpl(
            r'constitution',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #constitution),
        r.ParameterMirrorImpl(
            r'intelligence',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #intelligence),
        r.ParameterMirrorImpl(
            r'wisdom',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #wisdom),
        r.ParameterMirrorImpl(
            r'charisma',
            48134,
            27,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            const prefix1.FrontDiceRoll(),
            #charisma),
        r.ParameterMirrorImpl(
            r'other',
            32774,
            28,
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
            30,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            null,
            null),
        r.ParameterMirrorImpl(r'max', 48134, 36, const prefix0.ClassReflector(),
            -1, -1, -1, null, const [], 20, #max),
        r.ParameterMirrorImpl(
            r'maxTryCount',
            48134,
            36,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            1,
            #maxTryCount),
        r.ParameterMirrorImpl(
            r'value',
            48134,
            36,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            20,
            #value),
        r.ParameterMirrorImpl(
            r'other',
            32774,
            37,
            const prefix0.ClassReflector(),
            1,
            -1,
            -1,
            null,
            const [],
            null,
            null),
        r.ParameterMirrorImpl(
            r'value',
            32774,
            37,
            const prefix0.ClassReflector(),
            -1,
            -1,
            -1,
            null,
            const [],
            null,
            null)
      ],
      <Type>[prefix1.FrontCharacterPart1, prefix1.FrontDiceRoll],
      2,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'playerName': (dynamic instance) => instance.playerName,
        r'characterName': (dynamic instance) => instance.characterName,
        r'className': (dynamic instance) => instance.className,
        r'raceName': (dynamic instance) => instance.raceName,
        r'background': (dynamic instance) => instance.background,
        r'alignment': (dynamic instance) => instance.alignment,
        r'strength': (dynamic instance) => instance.strength,
        r'dexterity': (dynamic instance) => instance.dexterity,
        r'constitution': (dynamic instance) => instance.constitution,
        r'intelligence': (dynamic instance) => instance.intelligence,
        r'wisdom': (dynamic instance) => instance.wisdom,
        r'charisma': (dynamic instance) => instance.charisma,
        r'max': (dynamic instance) => instance.max,
        r'maxTryCount': (dynamic instance) => instance.maxTryCount,
        r'value': (dynamic instance) => instance.value
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
