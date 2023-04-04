
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_type_card_row.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class DetailMainInfoPart extends StatelessWidget {
  const DetailMainInfoPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> detailPokemonTypeList = [
      'bug',
      'bloom',
    ];
    return SizedBox(
      // color: CColors.dark,
      height: 170.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text(
              'bulbasaur',
              style: textTheme.labelLarge,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...detailPokemonTypeList.map(
                (type) => DetailTypeCardRow(type: type),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '7.5 KG',
                      style: textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      'WEIGHT',
                      style: textTheme.labelSmall,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0.6 M',
                      style: textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      'HEIGHT',
                      style: textTheme.labelSmall,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
