import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
        textStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.inter(fontSize: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(69))),
  );

  static TextTheme textStyle = TextTheme(
    displayLarge: GoogleFonts.inter(
        letterSpacing: 0,
        fontSize: 32,
        color: AppColors.greyBlue,
        fontWeight: FontWeight.w500),
        
    displaySmall: GoogleFonts.inter(
       letterSpacing: -1,
        fontSize: 16, color: AppColors.greyBlue, fontWeight: FontWeight.w400),
    headlineLarge: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: AppColors.headLineBlack),
    headlineMedium: GoogleFonts.inter(
       letterSpacing: -1,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: AppColors.headLineBlack),
    headlineSmall: GoogleFonts.inter(
       letterSpacing: -1,
      fontSize: 12,
      color: AppColors.headLineGrey,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: GoogleFonts.inter(
       letterSpacing: -1,
      fontSize: 12,
      color: AppColors.mainColor,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: GoogleFonts.inter(
       letterSpacing: -1,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.midnightShadow),
    bodySmall: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w700),
    labelSmall: GoogleFonts.inter(
       letterSpacing: -1,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.labelSmallBlack),
    labelMedium: GoogleFonts.inter(
       letterSpacing: -1,
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
