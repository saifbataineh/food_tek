import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class OrderTrackStatusWidget extends StatelessWidget {
  const OrderTrackStatusWidget({
    super.key,
    required this.title,
    this.value,
  });
  final String title;
  final double? value;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: responsiveHeight(context, 10),
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: value == 1 ? AppColors.mainColor : null),
        ),
        LinearProgressIndicator(
          backgroundColor: AppColors.greyColor,
          value: value,
        ),
      ],
    );
  }
}
