import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

import '../entities/character_entitiy.dart';
import '../repositories/character_repositories.dart';

class GetCharacters implements UseCase<List<Character>, NoParams> {
  final CharacterRepository repository;

  GetCharacters(this.repository);

  @override
  Future<Either<Failure, List<Character>>> call(NoParams params) async {
    return await repository.getCharacters();
  }
}
