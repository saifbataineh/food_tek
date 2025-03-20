import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';

class AppTheme {
  static DatePickerThemeData datePickerTheme = DatePickerThemeData(
    confirmButtonStyle: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(AppColors.mainColor),
    ),
    cancelButtonStyle: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(AppColors.mainColor),
    ),
  );
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        foregroundColor: Colors.white,
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(69))),
  );

  static const TextTheme textStyle = TextTheme(
    displayLarge: TextStyle(
        fontSize: 32, color: AppColors.blueGrey, fontWeight: FontWeight.w500),
    displaySmall: TextStyle(
        fontSize: 16, color: AppColors.blueGrey, fontWeight: FontWeight.w400),
    headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.headLineBlack),
    headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppColors.headLineBlack),
    headlineSmall: TextStyle(
      fontSize: 12,
      color: AppColors.headLineGrey,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      color: AppColors.headLineGrey,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
    labelSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.labelSmallBlack),
    labelMedium: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
