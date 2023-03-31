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
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/pokemon_background_image.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          bottom: false,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Column(
                  children: [
                    Image.asset(
                      'assets/images/pokemon_title_image.png',
                      fit: BoxFit.contain,
                      height: 50.h,
                    ),
                    SizedBox(
                      height: 5.h,
                    )
                  ],
                ),
                floating: true,
                snap: true,
              ),
            ],
            body: Padding(
              padding: EdgeInsets.only(right: 20.w, left: 20.w),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 20.w,
                ),
                itemBuilder: (context, index) {
                  return dummyList[index];
                },
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
