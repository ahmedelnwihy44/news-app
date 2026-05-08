import 'package:flutter/material.dart';
import 'package:news/features/home/home_drawer/home_drawer.dart';
import 'package:news/features/home/sourses/sources_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SourcesView(),
    );
  }
}
