part of 'character_bloc.dart';

abstract class CharacterState extends Equatable {}

class CharactersUninitializedState extends CharacterState {
  @override
  List<Object> get props => [];
}

class CharactersFetchingState extends CharacterState {
  @override
  List<Object> get props => [];
}

class CharactersFetchedState extends CharacterState {
  final Item item;

  CharactersFetchedState({required this.item});

  @override
  List<Object> get props => [item];
}

class CharactersErrorState extends CharacterState {
  @override
  List<Object> get props => [];
}