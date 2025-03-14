import 'package:flutter/material.dart';

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
      spacing: 8,
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
      ],
    );
  }
}
