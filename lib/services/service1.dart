import 'dart:convert';

import 'package:http/http.dart' as http;

class Service1 {
  Service1();

  final http.Client _httpClient = http.Client();
  final String url = "https://pokeapi.co/api/v2/pokemon/ditto";

  Future<Map<String, dynamic>> getPokemon() async {
    final uri = Uri.http(url);
    http.Response response;

    response = await _httpClient.get(uri);
    Map<String, dynamic> res;
    res = jsonDecode(response.body) as Map<String, dynamic>;
    return res;
  }
}
