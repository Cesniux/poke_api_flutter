import 'package:flutter/material.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/pokemon_title_image.png',
          fit: BoxFit.contain,
          height: 50,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/pokemon_background_image.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(
            'Squirtle',
            style: textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
