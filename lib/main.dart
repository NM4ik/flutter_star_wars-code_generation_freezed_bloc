import 'package:flutter/material.dart';
import 'package:star_wars_code_generation/ui/pages/characters_page.dart';

void main() {
  runApp(const StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  const StarWarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarWars',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          headline3: TextStyle(
              fontSize: 24, color: Colors.white),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.w200, color: Colors.white),
          caption: TextStyle(fontSize: 11, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ),
      home: CharactersPage(),
    );
  }
}
