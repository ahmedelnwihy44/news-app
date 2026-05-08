import 'package:flutter/material.dart';
import 'package:news/core/resources/colors.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("News",style: Theme.of(context).textTheme.bodyLarge,),
        backgroundColor: ColorsManager.white,
        foregroundColor: ColorsManager.black,
      ),
    );
  }
}
