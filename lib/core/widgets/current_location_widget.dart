import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/location_drop_down_menu.dart';
import 'package:food_tek/core/widgets/notification_icon_button.dart';
import 'package:food_tek/features/notifications/models/notification_model.dart';
import 'package:food_tek/features/notifications/views/widgets/notification_widgets.dart';

class CurrentLocationWidget extends StatelessWidget {
  const CurrentLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Row(
        children: [
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Icon(
              size: 18,
              Icons.location_on,
              color: AppColors.mainColor,
            ),
          ),
          SizedBox(width: responsiveWidth(context, 3.5)),
          LocationDropDownMenu(),
          const Spacer(),
          Container(
            width: responsiveWidth(context, 34),
            height: responsiveHeight(context, 34),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.lightgreyColor,
            ),
            child: NotificationIconButton(),
          ),
        ],
      ),
    );
  }
}


