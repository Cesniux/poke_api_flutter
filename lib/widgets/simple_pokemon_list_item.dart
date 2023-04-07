import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poke_api_flutter/features/detail/detail_view.dart';
import 'package:poke_api_flutter/features/home/models/pokemon_list_item.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class SimplePokemonListItem extends StatelessWidget {
  final PokemonListItem pokemonListItem;
  const SimplePokemonListItem({super.key, required this.pokemonListItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailView(),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: CColors.grass,
        ),
        child: Center(
          child: Container(
            padding:
                EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10, top: 10),
            child: Column(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: SvgPicture.network(
                    pokemonListItem.url,
                    placeholderBuilder: (context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator()),
                  ),
                  // child: Center(child: Text('Something')),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Text(
                  pokemonListItem.name,
                  style: textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
