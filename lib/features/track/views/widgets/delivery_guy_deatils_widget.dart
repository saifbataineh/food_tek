import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';

class DeliveryGuyDetailsWidget extends StatelessWidget {
  const DeliveryGuyDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(AppImageStrings.delivery, width: 50, height: 50),
      const SizedBox(width: 10),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Delivery Hero",
              style: Theme.of(context).textTheme.headlineSmall),
          Text("Aleksandr V.", style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: const Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 15,
            ),
            SizedBox(width: 4),
            Text(
              "4.9",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      const Spacer(),
      const SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.containerBorderColor,
        ),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call, color: Colors.green),
        ),
      ),
      SizedBox(
        width: 8,
      ),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.containerBorderColor),
        child: IconButton(
          onPressed: () {
            AppNavigatorService.pushNamed(context, routeName: Routes.chatPage);
          },
          icon: Icon(Icons.sms_rounded, color: Colors.blue),
        ),
      ),
    ]);
  }
}
