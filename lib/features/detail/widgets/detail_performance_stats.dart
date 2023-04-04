import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_performance_header.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

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
        const DetailPerformanceHeader(),
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
