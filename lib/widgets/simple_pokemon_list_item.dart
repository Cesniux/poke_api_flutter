import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poke_api_flutter/features/detail/detail_view.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class SimplePokemonListItem extends StatelessWidget {
  const SimplePokemonListItem({super.key});

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
                    'https://unpkg.com/pokeapi-sprites@2.0.2/sprites/pokemon/other/dream-world/2.svg',
                  ),
                ),
                SizedBox(
                  height: 15.w,
                ),
                Text(
                  'bulbasaur',
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
