
import 'package:flutter/material.dart';

class SimpleBackgroundImage extends StatelessWidget {
  const SimpleBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/pokemon_background_image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
