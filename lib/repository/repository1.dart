import 'package:flutter_bloc_app/services/service1.dart';

class Repository1 {
  Repository1({Service1? service}) : _pokemonService = service ?? Service1();

  final Service1 _pokemonService;

  Future<String> getPoke() async {
    final String name;

    final Map<String, dynamic> res = await _pokemonService.getPokemon();

    name = res["name"];
    return name;
  }
}
