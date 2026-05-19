import 'package:flutter/material.dart';
import 'package:news/api/models/article_response/Articles.dart';
import 'package:news/core/models/database_helper.dart';
import 'package:news/features/home/sourses/article_item.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<Articles> favorites = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  void _loadFavorites() async {
    final result = await DatabaseHelper.getFavorites();
    setState(() => favorites = result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        title: Text("Favorites", style: Theme.of(context).appBarTheme.titleTextStyle),
        centerTitle: true,
      ),
      body: favorites.isEmpty
          ? Center(child: Text('No favorites yet', style: TextStyle(color: Colors.white)))
          : ListView.separated(
        padding: EdgeInsets.all(12),
        itemBuilder: (context, index) => ArticleItem(article: favorites[index]),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: favorites.length,
      ),
    );
  }
}