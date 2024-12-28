import 'package:exam/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData myThemeData = ThemeData(
    textTheme: TextTheme(
      titleMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorManager.blackColor,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightGreyColor,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkBlueColor,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorManager.primaryColor,
      ),
    ),
  );
}
