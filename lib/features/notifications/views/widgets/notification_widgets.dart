import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/notifications/models/notification_model.dart';

class NotificationWidgets extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationWidgets(
      {super.key,
      required this.notificationModel,
      required List<NotificationModel> notificationList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
       child: SingleChildScrollView(
         child: Container(
          color: AppColors.containerBorderColor,
                              height: responsiveHeight(context,170),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationModel.name,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(notificationModel.message,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  notificationModel.date,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.headLineGrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
