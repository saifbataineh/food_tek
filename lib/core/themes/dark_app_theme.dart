
import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDarkTheme {
   static CheckboxThemeData checkboxTheme=CheckboxThemeData(
    side: BorderSide(color: AppColors.whiteGrey)
  );
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
      textStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
  );

  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      textStyle: GoogleFonts.inter(fontSize: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(69)),
    ),
  );

  static TextTheme textStyle = TextTheme(
    bodyMedium: GoogleFonts.inter(
      fontSize: 18,
      letterSpacing: 0,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    displayLarge: GoogleFonts.inter(
      fontSize: 32,
      letterSpacing: 0,
      color: AppColors.greyBlue,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: GoogleFonts.inter(
      fontSize: 16,
      letterSpacing: -1,
      color: AppColors.greyBlue,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 24,
      letterSpacing: -1,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 12,
      letterSpacing: -1,
      color: AppColors.greyColor,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 12,
      letterSpacing: -1,
      color: AppColors.mainColor,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 20,
      letterSpacing: -1,
      fontWeight: FontWeight.w500,
      color: Colors.white70,
    ),
    displayMedium: GoogleFonts.inter(
      fontSize: 20,
      letterSpacing: -1,
      fontWeight: FontWeight.w600,
      color: AppColors.redyBlack,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 14,
      letterSpacing: -1,
      fontWeight: FontWeight.w600,
      color: AppColors.containerBorderColor.withOpacity(0.8),
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 16,
      letterSpacing: -1,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}