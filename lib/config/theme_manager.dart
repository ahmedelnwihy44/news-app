import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors.dart';

class ThemeManager {
  static final ThemeData light = ThemeData();
  static final ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.black,
      foregroundColor: ColorsManager.white,
      titleTextStyle: GoogleFonts.inter(fontSize: 20.sp ,fontWeight: FontWeight.w500,color: ColorsManager.white),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: ColorsManager.black,
    cardColor: ColorsManager.white,
    textTheme: TextTheme(
      titleMedium: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 24.sp,color: ColorsManager.white),
      bodyMedium: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.bold,color: ColorsManager.white),
      bodySmall: GoogleFonts.inter(fontSize: 12.sp,fontWeight: FontWeight.w500,color: ColorsManager.grey),
      displayMedium: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.w700,color: ColorsManager.black),
    )
  );
}
