import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/widgets/simple_pokemon_list_item.dart';

class PokemonGridView extends StatelessWidget {
  const PokemonGridView({
    super.key,
    required this.dummyList,
  });

  final List<SimplePokemonListItem> dummyList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 8.h),
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
    );
  }
}
