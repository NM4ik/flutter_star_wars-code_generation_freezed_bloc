import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars_code_generation/bloc/character_bloc.dart';
import 'package:star_wars_code_generation/constants.dart';
import 'package:star_wars_code_generation/data/repositories/respository.dart';
import 'package:star_wars_code_generation/ui/widgets/character_list.dart';

class CharactersPage extends StatelessWidget {
  CharactersPage({Key? key}) : super(key: key);

  final repository = CharacterRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text(
          'StarWars',
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepository: repository),
        child: Container(
          child: const CharacterList(),
          decoration: const BoxDecoration(color: kBackgroundColor),
        ),
      ),
    );
  }
}
