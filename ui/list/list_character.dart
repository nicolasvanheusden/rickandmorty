

import 'package:flutter/material.dart';
import 'package:rickandmorty/model/character.dart';
import 'package:rickandmorty/ui/tile/tile_character.dart';

class ListCharacter extends StatelessWidget {

  final List<Character> list;

  ListCharacter({@required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, i){
        return TileCharacter(character: list[i],);
      },
      separatorBuilder: (ctx, i) => Padding(padding: EdgeInsets.all(5.0)),
      itemCount: list.length
    );
  }

}