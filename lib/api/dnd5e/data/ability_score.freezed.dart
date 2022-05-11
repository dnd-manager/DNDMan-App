// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ability_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbilityScore _$AbilityScoreFromJson(Map<String, dynamic> json) {
  return _AbilityScore.fromJson(json);
}

/// @nodoc
mixin _$AbilityScore {
  String get index => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get full_name => throw _privateConstructorUsedError;
  List<String> get desc => throw _privateConstructorUsedError;
  List<IndexObject> get skills => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityScoreCopyWith<AbilityScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityScoreCopyWith<$Res> {
  factory $AbilityScoreCopyWith(
          AbilityScore value, $Res Function(AbilityScore) then) =
      _$AbilityScoreCopyWithImpl<$Res>;
  $Res call(
      {String index,
      String name,
      String full_name,
      List<String> desc,
      List<IndexObject> skills,
      String url});
}

/// @nodoc
class _$AbilityScoreCopyWithImpl<$Res> implements $AbilityScoreCopyWith<$Res> {
  _$AbilityScoreCopyWithImpl(this._value, this._then);

  final AbilityScore _value;
  // ignore: unused_field
  final $Res Function(AbilityScore) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? name = freezed,
    Object? full_name = freezed,
    Object? desc = freezed,
    Object? skills = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: full_name == freezed
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AbilityScoreCopyWith<$Res>
    implements $AbilityScoreCopyWith<$Res> {
  factory _$AbilityScoreCopyWith(
          _AbilityScore value, $Res Function(_AbilityScore) then) =
      __$AbilityScoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {String index,
      String name,
      String full_name,
      List<String> desc,
      List<IndexObject> skills,
      String url});
}

/// @nodoc
class __$AbilityScoreCopyWithImpl<$Res> extends _$AbilityScoreCopyWithImpl<$Res>
    implements _$AbilityScoreCopyWith<$Res> {
  __$AbilityScoreCopyWithImpl(
      _AbilityScore _value, $Res Function(_AbilityScore) _then)
      : super(_value, (v) => _then(v as _AbilityScore));

  @override
  _AbilityScore get _value => super._value as _AbilityScore;

  @override
  $Res call({
    Object? index = freezed,
    Object? name = freezed,
    Object? full_name = freezed,
    Object? desc = freezed,
    Object? skills = freezed,
    Object? url = freezed,
  }) {
    return _then(_AbilityScore(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      full_name: full_name == freezed
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String,
      desc: desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<IndexObject>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_AbilityScore implements _AbilityScore {
  const _$_AbilityScore(
      {required this.index,
      required this.name,
      required this.full_name,
      required final List<String> desc,
      required final List<IndexObject> skills,
      required this.url})
      : _desc = desc,
        _skills = skills;

  factory _$_AbilityScore.fromJson(Map<String, dynamic> json) =>
      _$$_AbilityScoreFromJson(json);

  @override
  final String index;
  @override
  final String name;
  @override
  final String full_name;
  final List<String> _desc;
  @override
  List<String> get desc {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desc);
  }

  final List<IndexObject> _skills;
  @override
  List<IndexObject> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final String url;

  @override
  String toString() {
    return 'AbilityScore(index: $index, name: $name, full_name: $full_name, desc: $desc, skills: $skills, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbilityScore &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.full_name, full_name) &&
            const DeepCollectionEquality().equals(other.desc, desc) &&
            const DeepCollectionEquality().equals(other.skills, skills) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(full_name),
      const DeepCollectionEquality().hash(desc),
      const DeepCollectionEquality().hash(skills),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$AbilityScoreCopyWith<_AbilityScore> get copyWith =>
      __$AbilityScoreCopyWithImpl<_AbilityScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbilityScoreToJson(this);
  }
}

abstract class _AbilityScore implements AbilityScore {
  const factory _AbilityScore(
      {required final String index,
      required final String name,
      required final String full_name,
      required final List<String> desc,
      required final List<IndexObject> skills,
      required final String url}) = _$_AbilityScore;

  factory _AbilityScore.fromJson(Map<String, dynamic> json) =
      _$_AbilityScore.fromJson;

  @override
  String get index => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get full_name => throw _privateConstructorUsedError;
  @override
  List<String> get desc => throw _privateConstructorUsedError;
  @override
  List<IndexObject> get skills => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AbilityScoreCopyWith<_AbilityScore> get copyWith =>
      throw _privateConstructorUsedError;
}
