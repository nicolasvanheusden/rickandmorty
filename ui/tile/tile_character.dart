

import 'package:flutter/material.dart';
import 'package:rickandmorty/model/character.dart';

class TileCharacter extends StatelessWidget {


  final Character character;

  TileCharacter({@required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.character.showName(),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),
      ),
      leading: Image.network(this.character.showImage(), fit: BoxFit.contain,),
      onTap: null,
    );
  }

}