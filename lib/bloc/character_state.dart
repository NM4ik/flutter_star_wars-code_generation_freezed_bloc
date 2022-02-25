part of 'character_bloc.dart';

abstract class CharacterState extends Equatable {
  const CharacterState();
}

class CharacterInitial extends CharacterState {
  @override
  List<Object> get props => [];
}
