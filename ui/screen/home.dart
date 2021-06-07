

import 'package:flutter/material.dart';
import 'package:rickandmorty/blocs/bloc_character.dart';
import 'package:rickandmorty/blocs/bloc_provider.dart';
import 'package:rickandmorty/ui/list/list_character.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocCharacter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick & Morty", style: TextStyle(color: Colors.lightGreenAccent),),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body:  StreamBuilder(
          stream: bloc.stream,
          builder: (ctx, snap){
            return (snap.hasData) ? ListCharacter(list: snap.data) : Center(child: Text("Aucune données"),);
          },
        ),
    );
  }


}