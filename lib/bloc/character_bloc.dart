import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:star_wars_code_generation/data/models/character.dart';
import 'package:star_wars_code_generation/data/repositories/respository.dart';

part 'character_event.dart';

part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepository characterRepository;

  CharacterBloc({required this.characterRepository})
      : super(CharactersUninitializedState()) {
    on<CharacterEvent>((event, emit) async {
      emit(CharactersFetchingState());
      Item item;

      try {
        if (event is CharacterLoadingEvent) {
          item = await characterRepository.fetchAllCharacters(event.page);
          emit(CharactersFetchedState(item: item));
        }
      } catch (e) {
        emit(CharactersErrorState());
      }
    });
  }
}
