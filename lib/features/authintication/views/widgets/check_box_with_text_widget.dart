import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class CheckBoxWithTextWidget extends StatefulWidget {
  const CheckBoxWithTextWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CheckBoxWithTextWidget> createState() => _CheckBoxWithTextWidgetState();
}

class _CheckBoxWithTextWidgetState extends State<CheckBoxWithTextWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: responsiveHeight(context, 25),
          width: responsiveWidth(context, 25),
          child: Checkbox(
              activeColor: AppColors.mainColor,
              value: isSelected,
              onChanged: (value) {
                setState(() {
                  isSelected = !isSelected;
                });
              }),
        ),
        SizedBox(
          width: responsiveWidth(context, 5),
        ),
        Text(
          widget.text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
