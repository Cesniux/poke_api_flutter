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
    final int emptyBarFlexValue = 300 - doubledStatAPIValue;
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
            // Stacked a row on a container to see the stat progress and to be able use max and current value ratio in a Row
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: CColors.silver,
                    borderRadius: BorderRadius.all(
                      Radius.circular(99),
                    ),
                  ),
                  height: 25,
                ),
                // Making colored value bar show in the bar with exact ratio
                Row(
                  children: [
                    Flexible(
                      flex: doubledStatAPIValue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(99),
                          ),
                        ),
                        height: 25,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
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
                      ),
                    ),
                    Flexible(
                      flex: emptyBarFlexValue,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: CColors.silver,
                          borderRadius: BorderRadius.all(
                            Radius.circular(99),
                          ),
                        ),
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
