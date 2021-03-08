
import 'dart:convert';
import 'package:mvvm_flutter/data/constants/c_api_url.dart';
import 'package:mvvm_flutter/data/helper/h_api_service.dart';
import 'package:mvvm_flutter/data/models/pokemon.dart';

class Webservice  with ApiServiceHelper {

  Future<List<Results>> fetchPokemon() async {
    final url = '${ApiUrls.baseUrl}/${ApiUrls.getPokemon}';
    var response = await get(url);



    if (response.statusCode == 200) {
      var jsonresponse = json.decode(response.body);
      var pokemon =  Pokemon.fromJson(jsonresponse);
      return pokemon.results;
    } else {
      throw Exception('Failed to load post'+response.body);
    }

  }
}