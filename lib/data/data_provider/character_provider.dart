import 'dart:convert';

import 'package:star_wars_code_generation/data/models/character.dart';
import 'package:http/http.dart' as http;
import 'package:star_wars_code_generation/data/models/image.dart';

class CharacterApiProvider {
  final url = 'https://swapi.dev/api/people/';

  Future<Item> getCharacter(int page) async {
    final response = await http.get(Uri.parse(url + '?page=$page'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Item.fromJson(json);
    } else {
      throw Exception();
    }
  }


  // Future<Image> getImage(int index) async{
  //   final response = await http.get(Uri.parse('https://starwars-visualguide.com/assets/img/characters/$index.jpg'));
  //   return response;
  // }

}
