// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) {
  return People(
    name: json['name'] as String,
    height: json['height'] as String,
    mass: json['mass'] as String,
    hairColor: json['hairColor'] as String,
    skinColor: json['skinColor'] as String,
    eyeColor: json['eyeColor'] as String,
    birthYear: json['birthYear'] as String,
    gender: json['gender'] as String,
    homeworld: json['homeworld'] as String,
    films: (json['films'] as List)?.map((e) => e as String)?.toList(),
    species: json['species'] as List,
    vehicles: (json['vehicles'] as List)?.map((e) => e as String)?.toList(),
    starships: (json['starships'] as List)?.map((e) => e as String)?.toList(),
    created: json['created'] as String,
    edited: json['edited'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PeopleToJson(People instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('height', instance.height);
  writeNotNull('mass', instance.mass);
  writeNotNull('hairColor', instance.hairColor);
  writeNotNull('skinColor', instance.skinColor);
  writeNotNull('eyeColor', instance.eyeColor);
  writeNotNull('birthYear', instance.birthYear);
  writeNotNull('gender', instance.gender);
  writeNotNull('homeworld', instance.homeworld);
  writeNotNull('films', instance.films);
  writeNotNull('species', instance.species);
  writeNotNull('vehicles', instance.vehicles);
  writeNotNull('starships', instance.starships);
  writeNotNull('created', instance.created);
  writeNotNull('edited', instance.edited);
  writeNotNull('url', instance.url);
  return val;
}
