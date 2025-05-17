import 'package:hive/hive.dart';
import '../models/character_model.dart';

abstract class CharacterLocalDataSource {
  Future<List<CharacterModel>> getCachedCharacters();
  Future<void> cacheCharacters(List<CharacterModel> characters);
}

class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  final Box<CharacterModel> box;

  CharacterLocalDataSourceImpl({required this.box});

  @override
  Future<List<CharacterModel>> getCachedCharacters() async {
    final characters = box.values.toList();
    if (characters.isNotEmpty) {
      return characters;
    } else {
      throw Exception('No cached data');
    }
  }

  @override
  Future<void> cacheCharacters(List<CharacterModel> characters) async {
    await box.clear();
    await box.addAll(characters);
  }
}
