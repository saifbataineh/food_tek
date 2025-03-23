import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class MinMaxWidget extends StatelessWidget {
  const MinMaxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(context, 10),
                vertical: responsiveHeight(context, 9)),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.whiteGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              "Min",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.darkergreyColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          width: responsiveWidth(context, 16),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: responsiveWidth(context, 10),
                vertical: responsiveHeight(context, 9)),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.whiteGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              "Max",
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.darkergreyColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}