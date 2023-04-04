import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_pokemon_image.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_type_card_row.dart';
import 'package:poke_api_flutter/style/res/constants.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> detailPokemonTypeList = [
      'bug',
      'bloom',
    ];
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
          children: [
            const DetailPokemonImage(),
            SizedBox(
              // color: CColors.dark,
              height: 170.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'bulbasaur',
                    style: textTheme.labelLarge,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
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
            )
          ],
        ),
      ),
    );
  }
}
