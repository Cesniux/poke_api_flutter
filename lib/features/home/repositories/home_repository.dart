import 'package:poke_api_flutter/features/home/models/pokemon_list_item.dart';

abstract class HomeRepository {
  Future<PokemonListItem> fetchPokemonListItem();
}
