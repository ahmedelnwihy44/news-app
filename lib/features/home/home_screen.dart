import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/features/home/categories/categories_view.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:news/features/home/sourses/sources_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget home=CategoriesView(onCategoryItemClicked: onCategoryItemClicked,);
  String title="Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          SizedBox(width: 24,)
        ],
      ),
      drawer: HomeDrawer(),
      body: home
    );
  }
  void onCategoryItemClicked(CategoriesModel model ){
    setState(() {
      title=model.title ;
      home=SourcesView(category: model);
    });
  }
}
