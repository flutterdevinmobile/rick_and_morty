import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/usecases/get_characters.dart';
import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final GetCharacters getCharacters;

  CharacterBloc({required this.getCharacters}) : super(const CharacterState.initial()) {
    on<CharacterEvent>((event, emit) async {
      emit(const CharacterState.loading());
      final failureOrCharacters = await getCharacters.call(NoParams());
      failureOrCharacters.fold(
            (failure) => emit(CharacterState.error(_mapFailureToMessage(failure))),
            (characters) => emit(CharacterState.loaded(characters)),
      );
    });
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return 'Server bilan bog‘liq xatolik yuz berdi';
    } else if (failure is CacheFailure) {
      return 'Keshdan ma’lumot olishda xatolik';
    } else if (failure is ConnectionFailure) {
      return 'Internet ulanishi mavjud emas';
    } else {
      return 'Noma’lum xatolik yuz berdi';
    }
  }
}
