

import 'package:flutter/material.dart';
import 'package:rickandmorty/blocs/bloc_character.dart';
import 'package:rickandmorty/blocs/bloc_provider.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<BlocCharacter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Rick and Morty"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: StreamBuilder(
          stream: bloc.stream,
          builder: (ctx, snap){
            return (snap.hasData) ? Center(child: Text("données à traiter"),) : Center(child: Text("Aucune données"),);
          },
        ),
      ),

    );
  }


}