import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

TextTheme textTheme = TextTheme(
  bodySmall: const TextStyle(
    color: CColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  ),
  labelLarge: TextStyle(
    fontSize: 21.sp,
    color: CColors.silver100,
    fontWeight: FontWeight.w700,
  ),
  labelMedium: TextStyle(
    color: CColors.silver100,
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
  ),
  labelSmall: TextStyle(
      letterSpacing: -0.4,
      fontWeight: FontWeight.w700,
      fontSize: 14.sp,
      color: CColors.silver),
  displayMedium: TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
    color: CColors.black,
  ),
  displaySmall: TextStyle(
    fontSize: 14.sp,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
  ),
);
