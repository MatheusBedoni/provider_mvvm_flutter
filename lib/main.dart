import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/screen/movie_list_page.dart';
import 'view_model/movie_list_view_model.dart';

void main() {
  runApp(App());
}


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Movies",
        debugShowCheckedModeBanner: false,
        home:
        ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
          child: MovieListPage(),
        )
    );
  }

}