

import 'dart:async';

import 'package:rickandmorty/blocs/bloc.dart';
import 'package:rickandmorty/model/character.dart';
import 'package:rickandmorty/services/rick_and_morty_DB_api.dart';

class BlocCharacter extends Bloc {

  final _streamController = StreamController<List<Character>>();
  Stream<List<Character>> get stream => _streamController.stream;
  Sink<List<Character>> get sink => _streamController.sink;

  fetchCharacter() async {
    final sports = await RickAndMortyDBApi().fetchCharacters();
    sink.add(sports);
  }

  BlocCharacter(){
    fetchCharacter();
  }

  @override
  dispose() {
    _streamController.close();
  }

}