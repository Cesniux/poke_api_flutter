import 'package:flutter/material.dart';
import 'package:poke_api_flutter/features/detail/widgets/detail_star_icon.dart';
import 'package:poke_api_flutter/style/theme/text_theme.dart';

class DetailPerformanceHeader extends StatelessWidget {
  const DetailPerformanceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
