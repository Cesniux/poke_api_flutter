import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_performance_header.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

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
                statAPIValue: 40,
                statName: 'HP',
                color: CColors.progressHp,
              ),
              DetailPerformanceBarRow(
                statAPIValue: 65,
                statName: 'ATK',
                color: CColors.progressAtk,
              ),
              DetailPerformanceBarRow(
                statAPIValue: 90,
                statName: 'DEF',
                color: CColors.progressDef,
              ),
              DetailPerformanceBarRow(
                statAPIValue: 30,
                statName: 'SPD',
                color: CColors.progressSpd,
              ),
              DetailPerformanceBarRow(
                statAPIValue: 80,
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

class DetailPerformanceBarRow extends StatelessWidget {
  final Color color;
  final String statName;
  final int statAPIValue;
  const DetailPerformanceBarRow({
    super.key,
    required this.statAPIValue,
    required this.statName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    const int maxStatAPIValue = 300;
    final int doubledStatAPIValue = statAPIValue * 2;
    final double indicatorValue = (doubledStatAPIValue / maxStatAPIValue);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: Text(
              statName,
              style: textTheme.labelSmall?.copyWith(fontSize: 18),
            ),
          ),
          Flexible(
            flex: 7,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(70)),
                  child: LinearProgressIndicator(
                    minHeight: 23.h,
                    backgroundColor: CColors.silver,
                    color: color,
                    value: indicatorValue,
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
            ),
          )
        ],
      ),
    );
  }
}
