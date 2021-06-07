

import 'dart:convert' show json;
import 'package:http/http.dart' as http;
import 'package:rickandmorty/model/character.dart';


class RickAndMortyDBApi {
  final String _baseUrl = "https://rickandmortyapi.com/api/character";

  Future<Map<String, dynamic>> request() async {
    final url = Uri.parse(_baseUrl);
    final result = await http.get(url);
    final body = json.decode(result.body);
    return body;
  }


  Future<List<Character>> fetchCharacters() async {
    final Map<String, dynamic> map = await request();
    List<Character> res = [];
    if (map != null && map["results"] != null) {
      List<dynamic> tmp = map["results"];
      tmp.map((json) => res.add(Character.fromJson(json["name"], json["status"], json["species"], json["gender"], json["image"])));
    }
    return res;
  }





}