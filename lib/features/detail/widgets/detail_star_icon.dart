import 'package:flutter/material.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailStarIcon extends StatelessWidget {
  const DetailStarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 25,
      width: 25,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Icon(
          Icons.star_border,
          color: CColors.silver100,
        ),
      ),
    );
  }
}
