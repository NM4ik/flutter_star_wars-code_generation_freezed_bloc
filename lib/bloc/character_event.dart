part of 'character_bloc.dart';

abstract class CharacterEvent extends Equatable {}

class CharacterLoadingEvent extends CharacterEvent {
  final int page;

  CharacterLoadingEvent({required this.page});

  @override
  List<Object> get props => [page];
}
