


import 'package:rickandmorty/blocs/bloc_character.dart';
import 'package:rickandmorty/blocs/bloc_provider.dart';
import 'package:rickandmorty/ui/screen/home.dart';

class BlocRouter{

  BlocProvider allCharacters() => BlocProvider<BlocCharacter>(bloc: BlocCharacter(), child: Home());
}