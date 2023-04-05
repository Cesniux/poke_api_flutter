import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_performance/detail_performance_bar_row.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_performance/detail_performance_header.dart';
import 'package:poke_api_flutter/style/res/constants.dart';

class DetailPerformanceStats extends StatelessWidget {
  const DetailPerformanceStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DetailPerformanceHeader(),
        SizedBox(
          height: 180.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DetailPerformanceBarRow(
                statValue: 40,
                statName: 'HP',
                color: CColors.progressHp,
              ),
              DetailPerformanceBarRow(
                statValue: 65,
                statName: 'ATK',
                color: CColors.progressAtk,
              ),
              DetailPerformanceBarRow(
                statValue: 90,
                statName: 'DEF',
                color: CColors.progressDef,
              ),
              DetailPerformanceBarRow(
                statValue: 30,
                statName: 'SPD',
                color: CColors.progressSpd,
              ),
              DetailPerformanceBarRow(
                statValue: 80,
                statName: 'EXP',
                color: CColors.progressExp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
