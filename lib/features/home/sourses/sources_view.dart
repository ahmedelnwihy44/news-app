import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/api_services.dart';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/article_response/Articles.dart';
import 'package:news/api/models/sources_respons/Source.dart';
import 'package:news/api/models/sources_respons/Sources_response.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/features/home/sourses/article_item.dart';

class SourcesView extends StatefulWidget {
   const SourcesView({super.key, required this.category});
final CategoriesModel category;

  @override
  State<SourcesView> createState() => _SourcesViewState();
}

class _SourcesViewState extends State<SourcesView> with SingleTickerProviderStateMixin {
  Source? selectedSource;
  Future<ArticlesResponse>? articlesFuture;
  Future<SourcesResponse>? sourcesFuture;
  TabController? tabController;
  List<Source> sources = [];

  @override
  void initState() {
    super.initState();
    sourcesFuture = ApiServices.getSources(widget.category);
  }

  void changeSource(Source source, int index) {
    setState(() {
      selectedSource = source;
      articlesFuture = ApiServices.getArticles(source);
    });
    tabController?.animateTo(index);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FutureBuilder(
            future: sourcesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('error'));
              }

              sources = snapshot.data?.sources ?? [];
              if (sources.isEmpty) return const Center(child: Text('No sources found'));

              tabController ??= TabController(
                length: sources.length,
                vsync: this,
              )..addListener(() {
                if (!tabController!.indexIsChanging) {
                  changeSource(sources[tabController!.index], tabController!.index);
                }
              });

              if (selectedSource == null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  changeSource(sources[0], 0);
                });
              }

              return TabBar(
                controller: tabController,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                dividerColor: Colors.transparent,
                indicatorColor: Theme.of(context).dividerColor,
                labelStyle: Theme.of(context).textTheme.bodyMedium,
                unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
                tabs: sources.map((source) => Tab(text: source.name)).toList(),
              );
            },
          ),

          SizedBox(height: 10.h),

          Expanded(
            child: FutureBuilder(
              future: articlesFuture,
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
    );
  }
}