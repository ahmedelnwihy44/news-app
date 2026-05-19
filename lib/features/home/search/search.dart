import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/api_services.dart';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/article_response/Articles.dart';
import 'package:news/features/home/search/text_field_widget.dart';
import 'package:news/features/home/sourses/article_item.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Future<ArticlesResponse>? searchFuture;
  final _debounce = ValueNotifier<String>('');
  final empty = Future.value(ArticlesResponse(articles: []));

  @override
  void initState() {
    super.initState();
    _debounce.addListener(() {
      Future.delayed(Duration(milliseconds: 500), () {
        if (_debounce.value.isNotEmpty) {
          setState(() {
            searchFuture = ApiServices.searchArticles(_debounce.value);
          });
        }
      });
    });
  }

  void search(String query) {
    if (query.isEmpty) {
      setState((){
        searchFuture = empty as Future<ArticlesResponse>?;
      });
      return;
    }
    _debounce.value = query;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        bottom: true,
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              TextFieldWidget(onSearch: search),
              SizedBox(height: 15.h),
              Expanded(
                child: FutureBuilder(
                  future: searchFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text(snapshot.error.toString()));
                    }

                    List<Articles> articles = snapshot.data?.articles ?? [];
                    return articles.isEmpty
                        ? Center(child: Text('No articles found', style: TextStyle(color: Theme.of(context).textTheme.titleSmall?.color)))
                        : ListView.separated(
                      itemBuilder: (context, index) => ArticleItem(article: articles[index]),
                      separatorBuilder: (context, index) => SizedBox(height: 10.h),
                      itemCount: articles.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
