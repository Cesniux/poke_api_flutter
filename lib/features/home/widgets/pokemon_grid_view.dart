import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/home/models/pokemon_list_item.dart';
import 'package:poke_api_flutter/widgets/simple_pokemon_list_item.dart';

class PokemonGridView extends StatelessWidget {
  final List<PokemonListItem> pokemonList;
  const PokemonGridView({
    super.key,
    required this.pokemonList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 8.h),
      child: GridView.builder(
        itemCount: pokemonList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 20.w,
        ),
        itemBuilder: (context, index) {
          return SimplePokemonListItem(
            pokemonListItem: pokemonList[index],
          );
        },
      ),
    );
  }
}
