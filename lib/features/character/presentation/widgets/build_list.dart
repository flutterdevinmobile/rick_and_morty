import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/character_entitiy.dart';

Widget buildList(List<Character> characters) {
  return ListView.builder(
    itemCount: characters.length,
    itemBuilder: (context, index) {
      final character = characters[index];
      return ListTile(
        leading: Image.network(character.image, width: 80, height: 80, fit: BoxFit.cover),
        title: Text(character.name),
        subtitle: Text('${character.species} - ${character.status}'),
      );
    },
  );
}
