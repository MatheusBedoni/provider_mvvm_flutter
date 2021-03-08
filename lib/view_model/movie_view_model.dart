


import 'package:mvvm_flutter/data/models/pokemon.dart';

class PokemonViewModel {

  final Results pokemon;

  PokemonViewModel({this.pokemon});

  String get title {
    return this.pokemon.name;
  }


}