import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/features/home/categories/categories_item.dart';

class CategoriesView extends StatefulWidget {
 const CategoriesView({super.key});
  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Good Morning\n Here is Some News For You",style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 16.h,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=> CategoriesItem(category: CategoriesModel.categories[index]),
                  separatorBuilder: (context,index)=> SizedBox(height: 16.h,),
                  itemCount: CategoriesModel.categories.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
