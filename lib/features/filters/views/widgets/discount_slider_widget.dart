import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class DiscountSliderWidget extends StatefulWidget {
  const DiscountSliderWidget({super.key});

  @override
  State<DiscountSliderWidget> createState() => _DiscountSliderWidgetState();
}

class _DiscountSliderWidgetState extends State<DiscountSliderWidget> {
  double sliderValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("0%"),
            Text("100%"),
          ],
        ),
        Slider(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            inactiveColor: AppColors.whiteGrey,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            }),
      ],
    );
  }
}
