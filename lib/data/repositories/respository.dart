import 'package:star_wars_code_generation/data/data_provider/character_provider.dart';
import 'package:star_wars_code_generation/data/models/character.dart';

class CharacterRepository {
  final CharacterApiProvider _characterApiProvider = CharacterApiProvider();

  Future<Item> fetchAllCharacters(int page) =>
      _characterApiProvider.getCharacter(page);
}
