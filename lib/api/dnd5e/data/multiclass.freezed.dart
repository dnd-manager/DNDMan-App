// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiclass.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiClass _$MultiClassFromJson(Map<String, dynamic> json) {
  return _MultiClass.fromJson(json);
}

/// @nodoc
mixin _$MultiClass {
  List<Prerequisite> get prerequisites => throw _privateConstructorUsedError;
  List<IndexObject> get proficiencies => throw _privateConstructorUsedError;
  List<Choice<IndexObject>> get proficiency_choices =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiClassCopyWith<MultiClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiClassCopyWith<$Res> {
  factory $MultiClassCopyWith(
          MultiClass value, $Res Function(MultiClass) then) =
      _$MultiClassCopyWithImpl<$Res>;
  $Res call(
      {List<Prerequisite> prerequisites,
      List<IndexObject> proficiencies,
      List<Choice<IndexObject>> proficiency_choices});
}

/// @nodoc
class _$MultiClassCopyWithImpl<$Res> implements $MultiClassCopyWith<$Res> {
  _$MultiClassCopyWithImpl(this._value, this._then);

  final MultiClass _value;
  // ignore: unused_field
  final $Res Function(MultiClass) _then;

  @override
  $Res call({
    Object? prerequisites = freezed,
    Object? proficiencies = freezed,
    Object? proficiency_choices = freezed,
  }) {
    return _then(_value.copyWith(
      prerequisites: prerequisites == freezed
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<Prerequisite>,
      proficiencies: proficiencies == freezed
          ? _value.proficiencies
          : proficiencies // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      proficiency_choices: proficiency_choices == freezed
          ? _value.proficiency_choices
          : proficiency_choices // ignore: cast_nullable_to_non_nullable
              as List<Choice<IndexObject>>,
    ));
  }
}

/// @nodoc
abstract class _$MultiClassCopyWith<$Res> implements $MultiClassCopyWith<$Res> {
  factory _$MultiClassCopyWith(
          _MultiClass value, $Res Function(_MultiClass) then) =
      __$MultiClassCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Prerequisite> prerequisites,
      List<IndexObject> proficiencies,
      List<Choice<IndexObject>> proficiency_choices});
}

/// @nodoc
class __$MultiClassCopyWithImpl<$Res> extends _$MultiClassCopyWithImpl<$Res>
    implements _$MultiClassCopyWith<$Res> {
  __$MultiClassCopyWithImpl(
      _MultiClass _value, $Res Function(_MultiClass) _then)
      : super(_value, (v) => _then(v as _MultiClass));

  @override
  _MultiClass get _value => super._value as _MultiClass;

  @override
  $Res call({
    Object? prerequisites = freezed,
    Object? proficiencies = freezed,
    Object? proficiency_choices = freezed,
  }) {
    return _then(_MultiClass(
      prerequisites: prerequisites == freezed
          ? _value.prerequisites
          : prerequisites // ignore: cast_nullable_to_non_nullable
              as List<Prerequisite>,
      proficiencies: proficiencies == freezed
          ? _value.proficiencies
          : proficiencies // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      proficiency_choices: proficiency_choices == freezed
          ? _value.proficiency_choices
          : proficiency_choices // ignore: cast_nullable_to_non_nullable
              as List<Choice<IndexObject>>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MultiClass implements _MultiClass {
  const _$_MultiClass(
      {required final List<Prerequisite> prerequisites,
      required final List<IndexObject> proficiencies,
      required final List<Choice<IndexObject>> proficiency_choices})
      : _prerequisites = prerequisites,
        _proficiencies = proficiencies,
        _proficiency_choices = proficiency_choices;

  factory _$_MultiClass.fromJson(Map<String, dynamic> json) =>
      _$$_MultiClassFromJson(json);

  final List<Prerequisite> _prerequisites;
  @override
  List<Prerequisite> get prerequisites {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prerequisites);
  }

  final List<IndexObject> _proficiencies;
  @override
  List<IndexObject> get proficiencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proficiencies);
  }

  final List<Choice<IndexObject>> _proficiency_choices;
  @override
  List<Choice<IndexObject>> get proficiency_choices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proficiency_choices);
  }

  @override
  String toString() {
    return 'MultiClass(prerequisites: $prerequisites, proficiencies: $proficiencies, proficiency_choices: $proficiency_choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultiClass &&
            const DeepCollectionEquality()
                .equals(other.prerequisites, prerequisites) &&
            const DeepCollectionEquality()
                .equals(other.proficiencies, proficiencies) &&
            const DeepCollectionEquality()
                .equals(other.proficiency_choices, proficiency_choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(prerequisites),
      const DeepCollectionEquality().hash(proficiencies),
      const DeepCollectionEquality().hash(proficiency_choices));

  @JsonKey(ignore: true)
  @override
  _$MultiClassCopyWith<_MultiClass> get copyWith =>
      __$MultiClassCopyWithImpl<_MultiClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultiClassToJson(this);
  }
}

abstract class _MultiClass implements MultiClass {
  const factory _MultiClass(
          {required final List<Prerequisite> prerequisites,
          required final List<IndexObject> proficiencies,
          required final List<Choice<IndexObject>> proficiency_choices}) =
      _$_MultiClass;

  factory _MultiClass.fromJson(Map<String, dynamic> json) =
      _$_MultiClass.fromJson;

  @override
  List<Prerequisite> get prerequisites => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get proficiencies => throw _privateConstructorUsedError;
  @override
  List<Choice<IndexObject>> get proficiency_choices =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MultiClassCopyWith<_MultiClass> get copyWith =>
      throw _privateConstructorUsedError;
}
