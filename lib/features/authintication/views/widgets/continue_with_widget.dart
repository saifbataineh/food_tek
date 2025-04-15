import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class ContinueWithWidget extends StatelessWidget {
  const ContinueWithWidget(
      {super.key, required this.image, required this.company, });
  final String image;
  final String company;


  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: responsiveWidth(context, 295),
      height: responsiveHeight(context, 48),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.containerBorderColor)),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image.asset(
           
              image,
            ),
            Text(
              
              'Continue with $company',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
