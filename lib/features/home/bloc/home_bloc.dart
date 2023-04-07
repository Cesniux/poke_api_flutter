import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:poke_api_flutter/features/home/models/pokemon_list_item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const ListState()) {
    on<PokemonFetched>(_onPokemonFetched);
  }
  Future<void> _onPokemonFetched(
      PokemonFetched event, Emitter<HomeState> emit) async {
    // if (state.hasReachedMax) return;
    print('yo');
    List<PokemonListItem> list = await _fetchPokemons();
    emit(ListState(pokemonList: list));
  }

  Future<List<PokemonListItem>> _fetchPokemons() async {
    final nameResponse = await http.Client().get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20'),
    );

    List imageUrlList = [];
    for (int i = 1; i < 21; i++) {
      imageUrlList.add(
          'https://unpkg.com/pokeapi-sprites@2.0.2/sprites/pokemon/other/dream-world/$i.svg');
    }

    if (nameResponse.statusCode == 200) {
      final body = json.decode(nameResponse.body) as Map<String, dynamic>;

      List<PokemonListItem> pokemonList = [];
      for (int i = 0; i < 20; i++) {
        PokemonListItem item = PokemonListItem(
            name: body['results'][i]['name'],
            url: imageUrlList[i],
            type: 'poison');
        pokemonList.add(item);
      }

      print(pokemonList);
      return pokemonList;
    }
    throw Exception('Fetch failed, statusCode: ${nameResponse.statusCode}');
  }
}
