import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class DetailPerformanceBarRow extends StatelessWidget {
  final Color color;
  final String statName;
  final int statValue;
  const DetailPerformanceBarRow({
    super.key,
    required this.statValue,
    required this.statName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final double barHeight = 26.h;
    const int maxStatValue = 300;
    final int doubledStatValue = statValue * 2;
    final int emptyBarFlexValue = maxStatValue - doubledStatValue;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Responsive Row - statName nad value bar
          Flexible(
            flex: 1,
            child: Text(
              statName,
              style: textTheme.labelSmall?.copyWith(fontSize: 18.sp),
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
                  height: barHeight,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: doubledStatValue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(99),
                          ),
                        ),
                        height: barHeight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '$doubledStatValue/$maxStatValue',
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
                        height: barHeight,
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
