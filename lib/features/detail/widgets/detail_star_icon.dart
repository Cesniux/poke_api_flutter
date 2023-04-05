import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailStarIcon extends StatelessWidget {
  const DetailStarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23.h,
      width: 23.w,
      child: const FittedBox(
        fit: BoxFit.cover,
        child: Icon(
          Icons.star_border,
          color: CColors.silver100,
        ),
      ),
    );
  }
}
