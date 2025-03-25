import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/features/person/views/widgets/notification_switch.dart';

class NotifiationsProfileColumnWidget extends StatelessWidget {
  const NotifiationsProfileColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.borderColor,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            "Notifications",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.midnightShadow),
          ),
          ListTile(
            trailing: NotificationSwitch(),
            leading: Icon(Icons.notifications, color: Colors.black),
            title: Text(
              "Push Notification",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          ListTile(
            trailing: NotificationSwitch(),
            leading: Icon(Icons.notifications_on, color: Colors.black),
            title: Text(
              "Promotional Notifications",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }
}
