

import 'package:flutter/material.dart';
import 'package:rickandmorty/model/character.dart';
import 'package:rickandmorty/ui/tile/tile_character.dart';

class ListCharacter extends StatelessWidget {

  final List<Character> list;

  ListCharacter({@required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (ctx, i){
        return TileCharacter(character: list[i]);
      },
      itemCount: list.length
    );
  }

}