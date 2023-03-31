import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/widgets/simple_pokemon_list_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimplePokemonListItem> dummyList = List.filled(
      50,
      const SimplePokemonListItem(),
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
            padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 20.w,
                ),
                itemBuilder: (context, index) {
                  return dummyList[index];
                }),
          )),
    );
  }
}
