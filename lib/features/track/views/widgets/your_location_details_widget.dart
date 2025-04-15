import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class YourLocationDetailsWidget extends StatelessWidget {
  const YourLocationDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        Text(
          "your location",
          style: TextStyle(color: Colors.grey),
        ),
        Row(children: [
          Icon(
            Icons.location_on_outlined,
            size: 15,
            color: AppColors.mainColor,
          ),
          Text(
            "123 Al-Madina Street, Abdali, Amman, Jordan",
            style: TextStyle(color: Theme.of(context).brightness==Brightness.dark?Colors.white: Colors.black, fontSize: 10),
          ),
        ]),
      ],
    );
  }
}
