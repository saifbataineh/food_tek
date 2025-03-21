import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/location_drop_down_menu.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        spacing: responsiveWidth(context, 3.5),
        children: [
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.mainColor.withValues(alpha: 0.1),
            ),
            child: Icon(
              size: 18,
              Icons.location_on,
              color: AppColors.mainColor,
            ),
          ),
          LocationDropDownMenu(),
          Spacer(),
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.lightergreyColor,
            ),
            child: Badge(
              child: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {},
                icon: Icon(size: 18, Icons.notifications),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
