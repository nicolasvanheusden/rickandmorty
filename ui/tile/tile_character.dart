

import 'package:flutter/material.dart';
import 'package:rickandmorty/model/character.dart';

class TileCharacter extends StatelessWidget {


  final Character character;

  TileCharacter({@required this.character});

  @override
  Widget build(BuildContext context) {

    final String status = character.showStatus().toLowerCase();
    return Card(
      color: Colors.lightGreen,
      elevation: 5.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(character.showImage(), fit: BoxFit.fill, scale: 2.0,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(character.showName(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0,), overflow: TextOverflow.ellipsis,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: status == "alive" ? Colors.green : status == "dead" ? Colors.red: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}