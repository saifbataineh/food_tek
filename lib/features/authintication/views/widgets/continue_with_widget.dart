import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget(
      {super.key, required this.image, required this.company});
  final String image;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.borderColor)),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image.asset(
              image,
              height: 18,
              width: 18,
            ),
            Text(
              'Continue with $company',
            ),
          ],
        ),
      ),
    );
  }
}
