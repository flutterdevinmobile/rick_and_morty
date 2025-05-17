// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCharacters value) fetchCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCharacters value)? fetchCharacters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCharacters value)? fetchCharacters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchCharactersImplCopyWith<$Res> {
  factory _$$FetchCharactersImplCopyWith(_$FetchCharactersImpl value,
          $Res Function(_$FetchCharactersImpl) then) =
      __$$FetchCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$FetchCharactersImpl>
    implements _$$FetchCharactersImplCopyWith<$Res> {
  __$$FetchCharactersImplCopyWithImpl(
      _$FetchCharactersImpl _value, $Res Function(_$FetchCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCharactersImpl implements _FetchCharacters {
  const _$FetchCharactersImpl();

  @override
  String toString() {
    return 'CharacterEvent.fetchCharacters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCharacters,
  }) {
    return fetchCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCharacters,
  }) {
    return fetchCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCharacters,
    required TResult orElse(),
  }) {
    if (fetchCharacters != null) {
      return fetchCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCharacters value) fetchCharacters,
  }) {
    return fetchCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCharacters value)? fetchCharacters,
  }) {
    return fetchCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCharacters value)? fetchCharacters,
    required TResult orElse(),
  }) {
    if (fetchCharacters != null) {
      return fetchCharacters(this);
    }
    return orElse();
  }
}

abstract class _FetchCharacters implements CharacterEvent {
  const factory _FetchCharacters() = _$FetchCharactersImpl;
}
