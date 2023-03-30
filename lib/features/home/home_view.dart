import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PokemonListItem> dummyList = List.filled(
      50,
      const PokemonListItem(),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/pokemon_title_image.png',
          fit: BoxFit.contain,
          height: 50,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/pokemon_background_image.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return dummyList[index];
                }),
          )),
    );
  }
}

class PokemonListItem extends StatelessWidget {
  const PokemonListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CColors.white,
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all((20)),
          child: Column(
            children: [
              Flexible(
                fit: FlexFit.loose,
                child: SvgPicture.asset(
                  'assets/images/svg/bulbasaur_image.svg',
                ),
              ),
              const Text('bulbasaur'),
            ],
          ),
        ),
      ),
    );
  }
}
