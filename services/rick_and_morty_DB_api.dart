

import 'dart:convert' show json;
import 'package:http/http.dart' as http;
import 'package:rickandmorty/model/character.dart';


class RickAndMortyDBApi {
  final String _baseUrl = "https://rickandmortyapi.com/api/character";

  Future<List<dynamic>> request() async {
    final url = Uri.parse(_baseUrl);
    final result = await http.get(url);
    final body = json.decode(result.body);
    return body;
  }


  Future<List<Character>> fetchCharacters() async {
    final List<dynamic> list = await request();
    return list;
  }





}