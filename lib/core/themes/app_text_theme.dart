import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class AppTheme {
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );

  static const TextTheme textStyle = TextTheme(
    headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.headLineBlack),
    headlineSmall: TextStyle(
      fontSize: 12,
      color: AppColors.headLineGrey,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
  );
}
