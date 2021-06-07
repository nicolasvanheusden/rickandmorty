

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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
                image: DecorationImage(
                  image: NetworkImage(character.showImage(),),
                  fit: BoxFit.cover
              )
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RichText(
                      text: TextSpan(
                        text: character.showName(),
                        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: status == "alive" ? Colors.green : status == "dead" ? Colors.red: Colors.grey),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10.0)),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: Text(
                          "${character.showStatus()} - ${character.showGender()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RichText(
                      text: TextSpan(
                        text: 'Gender : ',
                        children: [
                          TextSpan(
                            text: character.showGender(),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          )
                        ]
                      )
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: RichText(
                      text: TextSpan(
                        text: 'Origin : ',
                        children: [
                          TextSpan(
                            text: character.showOrigin(),
                            style: TextStyle(fontWeight: FontWeight.bold)
                          ),
                        ]
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                ],
              ),
          ],
        ),
      ),
    );
  }

}