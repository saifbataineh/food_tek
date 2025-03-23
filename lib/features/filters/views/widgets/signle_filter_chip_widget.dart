import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';

class SignleFilterChipWidget extends StatefulWidget {
  const SignleFilterChipWidget({super.key, required this.title});
  final String title;
  @override
  State<SignleFilterChipWidget> createState() => _SignleFilterChipWidgetState();
}

class _SignleFilterChipWidgetState extends State<SignleFilterChipWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: responsiveHeight(context, 28),
      child: FilterChip(
        padding: EdgeInsets.only(
            right: responsiveWidth(context, 10),
            left: responsiveWidth(context, 10),
            bottom: responsiveHeight(context, 8)),
        showCheckmark: false,
        label: Text(widget.title),
        onSelected: (value) {
          setState(() {
            isSelected = value;
          });
        },
        labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: isSelected ? Colors.white : AppColors.darkergreyColor),
        selected: isSelected,
        selectedColor: AppColors.mainColor,
      ),
    );
  }
}