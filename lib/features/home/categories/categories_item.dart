import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/models/categories_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key, required this.category});

  final CategoriesModel category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Image.asset(category.imagePath));
  }
}
