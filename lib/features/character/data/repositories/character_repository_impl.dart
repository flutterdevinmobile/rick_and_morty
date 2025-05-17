import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/character_entitiy.dart';
import '../../domain/repositories/character_repositories.dart';
import '../datasources/character_local_datasource.dart';
import '../datasources/character_remote_data_source.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final CharacterRemoteDataSource remoteDataSource;
  final CharacterLocalDataSource localDataSource;
  final Connectivity connectivity;

  CharacterRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.connectivity,
  });

  @override
  Future<Either<Failure, List<Character>>> getCharacters() async {
    final connectivityResult = await connectivity.checkConnectivity();

    if (connectivityResult != ConnectivityResult.none) {
      try {
        final remoteCharacters = await remoteDataSource.fetchCharacters();
        await localDataSource.cacheCharacters(remoteCharacters);

        final characters = remoteCharacters.map((e) => e.toEntity()).toList();

        return Right(characters);
      } catch (e, stacktrace) {
        print('Remote fetch error: $e');
        print('StackTrace: $stacktrace');
        try {
          final localCharacters = await localDataSource.getCachedCharacters();

          final characters = localCharacters.map((e) => e.toEntity()).toList();

          return Right(characters);
        } catch (localError) {
          print('Local cache error: $localError');
          return Left(ServerFailure(e.toString()));
        }
      }
    } else {
      try {
        final localCharacters = await localDataSource.getCachedCharacters();

        final characters = localCharacters.map((e) => e.toEntity()).toList();

        return Right(characters);
      } catch (e) {
        print('No internet & no cache error: $e');
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}



