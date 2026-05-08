import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/providers/home_provider.dart';
import 'package:provider/provider.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.category});

  final CategoriesModel category;

  @override
  Widget build(BuildContext context) {
     var homeProvider=Provider.of<HomeProvider>(context);

    return InkWell(
      onTap: (){
        homeProvider.goToSourcesView(category);
      },
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: Image.asset(category.imagePath)),
    );
  }
}
