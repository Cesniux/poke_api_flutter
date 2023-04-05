import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
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
    );
  }
}
