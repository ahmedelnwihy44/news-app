import 'package:flutter/material.dart';
import 'package:news/core/routes/routes_manager.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:provider/provider.dart';

import '../../providers/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text(homeProvider.title,style: Theme.of(context).appBarTheme.titleTextStyle,),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, RoutesManager.search);
          }, icon: Icon(Icons.search)),
          SizedBox(width: 24,)
        ],
      ),
      drawer: HomeDrawer(),
      body: homeProvider.homeView,
    );
  }
}
