import 'dart:convert';

import 'package:http/http.dart' as http;

class Service1 {
  Service1();

  final http.Client _httpClient = http.Client();
  final String urlBase = "https://pokeapi.co/api/v2/pokemon/";

  Future<Map<String, dynamic>> getPokemon(String pokemon) async {
    final String url = urlBase + pokemon;
    final uri = Uri.parse(url);
    http.Response response;

    response = await _httpClient.get(uri);
    Map<String, dynamic> res;
    res = jsonDecode(response.body) as Map<String, dynamic>;
    return res;
  }
}
