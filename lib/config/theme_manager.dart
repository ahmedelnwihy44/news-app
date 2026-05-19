import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.white,
      foregroundColor: ColorsManager.black,
      titleTextStyle: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.w500, color: ColorsManager.black),
    ),


    scaffoldBackgroundColor: ColorsManager.white,
    cardColor: ColorsManager.black,
    dividerColor: ColorsManager.black,
    iconTheme: IconThemeData(color: ColorsManager.black) ,


    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(fontSize: 24.sp,fontWeight: FontWeight.w600,color: ColorsManager.black),
      bodyMedium: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold, color: ColorsManager.black),
      bodySmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w500, color: ColorsManager.black),
      displayMedium: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w700, color: ColorsManager.white),
      titleSmall:GoogleFonts.inter(color: ColorsManager.black,fontSize: 20,fontWeight: FontWeight.w400),


    ),
  );





  static final ThemeData dark = ThemeData(

    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.black,
      foregroundColor: ColorsManager.white,
      titleTextStyle: GoogleFonts.inter(fontSize: 20.sp ,fontWeight: FontWeight.w500,color: ColorsManager.white),
      centerTitle: true,
    ),


    scaffoldBackgroundColor: ColorsManager.black,
    cardColor: ColorsManager.white,
    dividerColor: ColorsManager.white,
    iconTheme: IconThemeData(color: ColorsManager.white) ,



    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(fontSize: 24.sp,fontWeight: FontWeight.w600,color: Colors.white),
      bodyMedium: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.bold,color: ColorsManager.white),
      bodySmall: GoogleFonts.inter(fontSize: 14.sp,fontWeight: FontWeight.w500,color: ColorsManager.white),
      displayMedium: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.w700,color: ColorsManager.black),
      titleSmall:GoogleFonts.inter(color: ColorsManager.white,fontSize: 20,fontWeight: FontWeight.w400),
    ),

  );
}
