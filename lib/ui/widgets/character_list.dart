import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars_code_generation/bloc/character_bloc.dart';
import 'package:star_wars_code_generation/data/models/character.dart';
import 'package:star_wars_code_generation/ui/widgets/custom_list_tile.dart';

import 'card_widget.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({Key? key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  int _currentPage = 1;


  @override
  void initState() {
    context.read<CharacterBloc>().characterRepository.fetchAllCharacters(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CharacterBloc>(context, listen: false)
        .add(CharacterLoadingEvent(page: 1));
    // context.watch<SearchBloc>()..add(SearchPersons(query));
    return BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          Item? item;
      if (state is CharactersFetchingState) {
        return const CircularProgressIndicator();
      } else if (state is CharactersFetchedState) {
        item = state.item;
      } else if (state is CharactersErrorState) {
        return const Text(
          "Error state",
          style: TextStyle(color: Colors.white, fontSize: 25),
        );
      }

      return ListView.builder(
          itemCount: item?.results?.length, itemBuilder: (context, index) {
            final result = item!.results![index];
            return CustomListTile(result: result);
      });
    });
  }
}
