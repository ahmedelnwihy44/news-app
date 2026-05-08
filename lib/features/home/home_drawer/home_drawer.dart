import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/resources/colors.dart';
import 'package:news/providers/home_provider.dart';
import 'package:provider/provider.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var homeProvider=Provider.of<HomeProvider>(context);
    return Drawer(
      backgroundColor: ColorsManager.black,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: ColorsManager.white,
            width: double.infinity,
            height: 166.h,
            child: Text("News App", style: GoogleFonts.inter(fontSize: 24.sp,fontWeight: FontWeight.bold,color: ColorsManager.black),),
          ),
          SizedBox(height: 19.h,),
          InkWell(
            onTap: (){
              homeProvider.goToCategoriesView();
              Navigator.pop(context);
            },
            child: Row(
              children: [
                SizedBox(width: 16.w,),
                Icon(Icons.home_filled,color: ColorsManager.white,),
                SizedBox(width: 5.w,),
                Text("Go To Home",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,color: ColorsManager.white),)
              ],
            ),
          ),
          SizedBox(height: 27.h,),
          Divider(color: ColorsManager.white,thickness: 2,indent: 16,endIndent: 16,),
          SizedBox(height: 24.h,),
          Row(
            children: [
              SizedBox(width: 16.w,),
              Icon(Icons.imagesearch_roller_outlined,color: ColorsManager.white,size: 30,),
              SizedBox(width: 5.w,),
              Text("Theme",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,color: ColorsManager.white),)
            ],
          ),
          SizedBox(height: 11.h,),

          SizedBox(height: 24.h,),
          Divider(color: ColorsManager.white,thickness: 2,indent: 16,endIndent: 16,),
          SizedBox(height: 24.h,),
          Row(
            children: [
              SizedBox(width: 16.w,),
              Icon(Icons.language_outlined,color: ColorsManager.white,size: 30,),
              SizedBox(width: 5.w,),
              Text("Language",style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,color: ColorsManager.white),),
              SizedBox(height: 11.h,),
            ],
          ),
        ],
      ),
    );
  }
}
