
import 'package:flutter/material.dart';
import 'package:mvvm_flutter/view/widgets/movie_list.dart';
import 'package:mvvm_flutter/view_model/movie_list_view_model.dart';
import 'package:mvvm_flutter/view_model/movie_view_model.dart';


import 'package:provider/provider.dart';

class MovieListPage extends StatefulWidget {
  @override 
  _MovieListPageState createState() => _MovieListPageState(); 
}

class _MovieListPageState extends State<MovieListPage> {

  List<PokemonViewModel> pokemonList = [];

  @override
  void initState() {
    super.initState();
     Provider.of<MovieListViewModel>(context, listen: false).fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Movies")
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[

          Expanded(
            child: PokemonList(pokemon:Provider.of<MovieListViewModel>(context).movies))
        ])
      )
   
    );
  }
}