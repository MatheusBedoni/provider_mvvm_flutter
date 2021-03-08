
import 'package:flutter/material.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';



class PokemonList extends StatelessWidget {

  final List<PokemonViewModel> pokemon;

  PokemonList({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.pokemon.length,
      itemBuilder: (context, index) {
        
        final pokemon = this.pokemon[index];

        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 8), // Shadow position
                ),
              ],
            ),
            width: 50, 
            height: 100,
            ),
          title: Text(pokemon.title),
        );
      },
    );
  }
}