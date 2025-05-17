import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/character_entitiy.dart';

abstract class CharacterRepository {
  Future<Either<Failure, List<Character>>> getCharacters();
}
