import '../../../../core/network/dio_client.dart';
import '../models/character_model.dart';

abstract class CharacterRemoteDataSource {
  Future<List<CharacterModel>> fetchCharacters();
}
class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  final DioClient dioClient;

  CharacterRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<CharacterModel>> fetchCharacters() async {
    final response = await dioClient.get('character');
    if (response.statusCode == 200) {

      final results = response.data['results'] as List;
      return results.map((json) => CharacterModel.fromJson(json)).toList();

    } else {
      throw Exception('Server error');
    }
  }
}

