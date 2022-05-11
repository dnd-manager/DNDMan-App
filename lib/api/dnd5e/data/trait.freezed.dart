// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trait.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trait _$TraitFromJson(Map<String, dynamic> json) {
  return _Trait.fromJson(json);
}

/// @nodoc
mixin _$Trait {
  String get index => throw _privateConstructorUsedError;
  List<IndexObject> get races => throw _privateConstructorUsedError;
  List<IndexObject> get subraces => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get desc => throw _privateConstructorUsedError;
  List<IndexObject> get proficiencies => throw _privateConstructorUsedError;
  List<IndexObjectChoice>? get proficiency_choices =>
      throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitCopyWith<Trait> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitCopyWith<$Res> {
  factory $TraitCopyWith(Trait value, $Res Function(Trait) then) =
      _$TraitCopyWithImpl<$Res>;
  $Res call(
      {String index,
      List<IndexObject> races,
      List<IndexObject> subraces,
      String name,
      List<String> desc,
      List<IndexObject> proficiencies,
      List<IndexObjectChoice>? proficiency_choices,
      String url});
}

/// @nodoc
class _$TraitCopyWithImpl<$Res> implements $TraitCopyWith<$Res> {
  _$TraitCopyWithImpl(this._value, this._then);

  final Trait _value;
  // ignore: unused_field
  final $Res Function(Trait) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? races = freezed,
    Object? subraces = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? proficiencies = freezed,
    Object? proficiency_choices = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      races: races == freezed
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      subraces: subraces == freezed
          ? _value.subraces
          : subraces // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      proficiencies: proficiencies == freezed
          ? _value.proficiencies
          : proficiencies // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      proficiency_choices: proficiency_choices == freezed
          ? _value.proficiency_choices
          : proficiency_choices // ignore: cast_nullable_to_non_nullable
              as List<IndexObjectChoice>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TraitCopyWith<$Res> implements $TraitCopyWith<$Res> {
  factory _$TraitCopyWith(_Trait value, $Res Function(_Trait) then) =
      __$TraitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String index,
      List<IndexObject> races,
      List<IndexObject> subraces,
      String name,
      List<String> desc,
      List<IndexObject> proficiencies,
      List<IndexObjectChoice>? proficiency_choices,
      String url});
}

/// @nodoc
class __$TraitCopyWithImpl<$Res> extends _$TraitCopyWithImpl<$Res>
    implements _$TraitCopyWith<$Res> {
  __$TraitCopyWithImpl(_Trait _value, $Res Function(_Trait) _then)
      : super(_value, (v) => _then(v as _Trait));

  @override
  _Trait get _value => super._value as _Trait;

  @override
  $Res call({
    Object? index = freezed,
    Object? races = freezed,
    Object? subraces = freezed,
    Object? name = freezed,
    Object? desc = freezed,
    Object? proficiencies = freezed,
    Object? proficiency_choices = freezed,
    Object? url = freezed,
  }) {
    return _then(_Trait(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      races: races == freezed
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      subraces: subraces == freezed
          ? _value.subraces
          : subraces // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      proficiencies: proficiencies == freezed
          ? _value.proficiencies
          : proficiencies // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      proficiency_choices: proficiency_choices == freezed
          ? _value.proficiency_choices
          : proficiency_choices // ignore: cast_nullable_to_non_nullable
              as List<IndexObjectChoice>?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Trait implements _Trait {
  const _$_Trait(
      {required this.index,
      required final List<IndexObject> races,
      required final List<IndexObject> subraces,
      required this.name,
      required final List<String> desc,
      required final List<IndexObject> proficiencies,
      required final List<IndexObjectChoice>? proficiency_choices,
      required this.url})
      : _races = races,
        _subraces = subraces,
        _desc = desc,
        _proficiencies = proficiencies,
        _proficiency_choices = proficiency_choices;

  factory _$_Trait.fromJson(Map<String, dynamic> json) =>
      _$$_TraitFromJson(json);

  @override
  final String index;
  final List<IndexObject> _races;
  @override
  List<IndexObject> get races {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_races);
  }

  final List<IndexObject> _subraces;
  @override
  List<IndexObject> get subraces {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subraces);
  }

  @override
  final String name;
  final List<String> _desc;
  @override
  List<String> get desc {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desc);
  }

  final List<IndexObject> _proficiencies;
  @override
  List<IndexObject> get proficiencies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_proficiencies);
  }

  final List<IndexObjectChoice>? _proficiency_choices;
  @override
  List<IndexObjectChoice>? get proficiency_choices {
    final value = _proficiency_choices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'Trait(index: $index, races: $races, subraces: $subraces, name: $name, desc: $desc, proficiencies: $proficiencies, proficiency_choices: $proficiency_choices, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trait &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.races, races) &&
            const DeepCollectionEquality().equals(other.subraces, subraces) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality()
                .equals(other.proficiencies, proficiencies) &&
            const DeepCollectionEquality()
                .equals(other.proficiency_choices, proficiency_choices) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(races),
      const DeepCollectionEquality().hash(subraces),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(proficiencies),
      const DeepCollectionEquality().hash(proficiency_choices),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$TraitCopyWith<_Trait> get copyWith =>
      __$TraitCopyWithImpl<_Trait>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TraitToJson(this);
  }
}

abstract class _Trait implements Trait {
  const factory _Trait(
      {required final String index,
      required final List<IndexObject> races,
      required final List<IndexObject> subraces,
      required final String name,
      required final List<String> desc,
      required final List<IndexObject> proficiencies,
      required final List<IndexObjectChoice>? proficiency_choices,
      required final String url}) = _$_Trait;

  factory _Trait.fromJson(Map<String, dynamic> json) = _$_Trait.fromJson;

  @override
  String get index => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get races => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get subraces => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get desc => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get proficiencies => throw _privateConstructorUsedError;
  @override
  List<IndexObjectChoice>? get proficiency_choices =>
      throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TraitCopyWith<_Trait> get copyWith => throw _privateConstructorUsedError;
}
