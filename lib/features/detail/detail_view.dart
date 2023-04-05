import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_main_info_part.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_performance_stats.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_pokemon_image.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_star_icon.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: InkWell(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            onTap: () {
              // Navigator.pop(context);
            },
            highlightColor: CColors.dark.withOpacity(0.4),
            child: const Icon(Icons.arrow_back, color: CColors.black),
          ),
        ),
        body: Column(
          children: const [
            DetailPokemonImage(),
            DetailMainInfoPart(),
            DetailPerformanceStats(
        
            )
          ],
        ),
      ),
    );
  }
}

