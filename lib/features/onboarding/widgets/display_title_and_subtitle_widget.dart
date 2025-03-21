import 'package:flutter/material.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class DisplayTitleAndSubtitleWidget extends StatelessWidget {
  const DisplayTitleAndSubtitleWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleFontWeight,
  });

  final String title;
  final String subTitle;
  final FontWeight? titleFontWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: responsiveHeight(context, 8),
      children: [
        Text(title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(fontWeight: titleFontWeight)),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall),
        SizedBox(
          height: responsiveHeight(context, 52),
        )
      ],
    );
  }
}
