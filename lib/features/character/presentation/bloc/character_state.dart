import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/character_entitiy.dart';

part 'character_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.initial() = _Initial;
  const factory CharacterState.loading() = _Loading;
  const factory CharacterState.loaded(List<Character> characters) = _Loaded;
  const factory CharacterState.error(String message) = _Error;
}
