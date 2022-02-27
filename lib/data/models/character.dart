class Item {
  int count;
  String? next;
  String? previous;
  List<Results>? results;

  Item(
      {required this.count, this.next, this.previous, required this.results});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map(
            (dynamic e) => Results.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'count': count,
      'next': next,
      'previous': previous,
      'results': results!.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'Characters{count: $count, next: $next, previous: $previous, results: $results}';
  }
}

class Results {
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String homeworld;
  List<String>? films;
  List<String>? species;
  List<String>? vehicles;
  List<String>? starships;
  String created;
  String edited;
  String url;

  Results(
      {required this.name,
      required this.height,
      required this.mass,
      required this.hairColor,
      required this.skinColor,
      required this.eyeColor,
      required this.birthYear,
      required this.gender,
      required this.homeworld,
      required this.films,
      required this.species,
      required this.vehicles,
      required this.starships,
      required this.created,
      required this.edited,
      required this.url});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
        name: json['name'],
        height: json['height'],
        mass: json['mass'],
        hairColor: json['hair_color'],
        skinColor: json['skin_color'],
        eyeColor: json['eye_color'],
        birthYear: json['birth_year'],
        gender: json['gender'],
        homeworld: json['homeworld'],
        films: json['films'].cast<String>(),
        species: json['species'].cast<String>(),
        vehicles: json['vehicles'].cast<String>(),
        starships: json['starships'].cast<String>(),
        created: json['created'],
        edited: json['edited'],
        url: json['url']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['height'] = height;
    data['mass'] = mass;
    data['hair_color'] = hairColor;
    data['skin_color'] = skinColor;
    data['eye_color'] = eyeColor;
    data['birth_year'] = birthYear;
    data['gender'] = gender;
    data['homeworld'] = homeworld;
    data['films'] = films;
    data['species'] = species;
    data['vehicles'] = vehicles;
    data['starships'] = starships;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;

    return data;
  }

  @override
  String toString() {
    return 'Results{name: $name, height: $height, mass: $mass, hairColor: $hairColor, skinColor: $skinColor, eyeColor: $eyeColor, birthYear: $birthYear, gender: $gender, homeworld: $homeworld, films: $films, species: $species, vehicles: $vehicles, starships: $starships, created: $created, edited: $edited, url: $url}';
  }
}
