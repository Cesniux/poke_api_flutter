import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_api_flutter/features/home/bloc/home_bloc.dart';
import 'package:poke_api_flutter/features/home/widgets/home_sliver_app_bar.dart';
import 'package:poke_api_flutter/features/home/widgets/pokemon_grid_view.dart';
import 'package:poke_api_flutter/widgets/simple_background_image.dart';
import 'package:poke_api_flutter/widgets/simple_pokemon_list_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // List<SimplePokemonListItem> dummyList = List.filled(
    //   50,
    //   const SimplePokemonListItem(),
    // );
    return Stack(children: [
      const SimpleBackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const HomeSliverAppBar(),
            ],
            body: BlocProvider(
              create: (context) => HomeBloc()..add(PokemonFetched()),
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is ListState) {
                    return PokemonGridView(pokemonList: state.pokemonList);
                  }
                  return const Center(
                    child: Text('Error'),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
