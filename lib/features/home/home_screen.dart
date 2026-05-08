import 'package:flutter/material.dart';
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
        title: Text(homeProvider.title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          SizedBox(width: 24,)
        ],
      ),
      drawer: HomeDrawer(),
      body: homeProvider.homeView,
    );
  }
}
