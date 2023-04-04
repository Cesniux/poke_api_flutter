import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailPokemonImage extends StatelessWidget {
  const DetailPokemonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CColors.grass,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60.w),
            bottomRight: Radius.circular(60.w),
          )),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 35.h),
        child: SvgPicture.asset(
          'assets/images/svg/bulbasaur_image.svg',
        ),
      ),
    );
  }
}