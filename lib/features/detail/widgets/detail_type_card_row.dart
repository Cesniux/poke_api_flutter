
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailTypeCardRow extends StatelessWidget {
  final String type;
  const DetailTypeCardRow({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      elevation: 3,
      child: Container(
        width: 120.w,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: CColors.grass,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.5.h, horizontal: 5.w),
          child: Text(
            type,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: CColors.black),
          ),
        ),
      ),
    );
  }
}
