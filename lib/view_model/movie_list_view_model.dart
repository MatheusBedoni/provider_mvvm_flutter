

import 'package:flutter/material.dart';
import 'package:mvvm_flutter/data/services/s_api.dart';

import 'movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {

  List<PokemonViewModel> movies = [];

  Future<void> fetchPokemon() async {
    final results =  await Webservice().fetchPokemon();
    this.movies = results.map((item) => PokemonViewModel(pokemon: item)).toList();
    print(this.movies.length);
    notifyListeners(); 
  }

}