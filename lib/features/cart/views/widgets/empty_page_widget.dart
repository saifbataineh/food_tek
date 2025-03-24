import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class EmptyPageWidget extends StatelessWidget {
  const EmptyPageWidget({
    required this.subTitle,
    required this.title,
    super.key,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImageStrings.emptyCart),
        SizedBox(
          height: responsiveHeight(context, 51),
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(letterSpacing: -2),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: responsiveHeight(context, 12),
        ),
        Text(
          textAlign: TextAlign.center,
          subTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
