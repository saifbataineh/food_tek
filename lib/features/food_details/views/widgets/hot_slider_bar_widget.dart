import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class HotSliderBarWidget extends StatefulWidget {
  const HotSliderBarWidget({
    super.key,
  });

  @override
  State<HotSliderBarWidget> createState() => _HotSliderBarWidgetState();
}

class _HotSliderBarWidgetState extends State<HotSliderBarWidget> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveWidth(context, 169),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Spicy",
          ),
          Slider(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              inactiveColor: AppColors.whiteGrey,
              activeColor: AppColors.hotRed,
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Mild",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.mainColor,
                    ),
              ),
              Text(
                "Hot",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.hotRed,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
