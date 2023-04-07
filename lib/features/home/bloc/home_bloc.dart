import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
    await _fetchPokemons();
    emit(const ListState());
  }

  Future<List<PokemonListItem>> _fetchPokemons() async {
    final nameResponse = await http.Client().get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20'),
    );

    List imageUrlList = [];
    for (int i = 0; i < 20; i++) {
      imageUrlList.add(
          'https://unpkg.com/browse/pokeapi-sprites@2.0.2/sprites/pokemon/other/dream-world/$i.svg');
    }
    debugPrint('Image url list: $imageUrlList');

    if (nameResponse.statusCode == 200) {
      final body = json.decode(nameResponse.body) as List;
      print('Success fetch. Pokemon list(names): ${body.toString()}');
    }
    throw Exception('error fetching posts');
  }
}
