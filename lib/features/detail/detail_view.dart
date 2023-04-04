import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_main_info_part.dart';
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
              statAPIValue: 45,
              statName: 'HP',
            )
          ],
        ),
      ),
    );
  }
}

class DetailPerformanceStats extends StatelessWidget {
  final String statName;
  final int statAPIValue;
  const DetailPerformanceStats({
    super.key,
    required this.statName,
    required this.statAPIValue,
  });

  @override
  Widget build(BuildContext context) {
    const int maxStatAPIValue = 300;
    final int doubledStatAPIValue = statAPIValue * 2;
    final double indicatorValue = (doubledStatAPIValue / maxStatAPIValue);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const DetailStarIcon(),
              Text(
                'PERFORMANCE',
                style: textTheme.labelMedium,
              ),
              const DetailStarIcon()
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'HP',
                style: textTheme.labelSmall?.copyWith(fontSize: 18),
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 310.w,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(70)),
                      child: LinearProgressIndicator(
                        minHeight: 23.h,
                        backgroundColor: CColors.silver,
                        color: CColors.progressHp,
                        value: indicatorValue,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$doubledStatAPIValue/$maxStatAPIValue',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
