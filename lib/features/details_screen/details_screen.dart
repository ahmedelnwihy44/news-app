import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/api/models/article_response/Articles.dart';
import 'package:news/core/resources/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Articles;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Details",style: Theme.of(context).appBarTheme.titleTextStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          bottom: true,
          child: Column(
            children: [
              Text(article.title ?? '',style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: 10,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(article.urlToImage ?? '')),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(article.author ?? '',style: TextStyle(color: ColorsManager.grey,fontSize: 12,fontWeight: FontWeight.w300),),
                  Spacer(),
                  Text(article.publishedAt ?? '',style: TextStyle(color: ColorsManager.grey,fontSize: 12,fontWeight: FontWeight.w300)),
                ],
              ),
              SizedBox(height: 10,),
              Text(article.content ?? ''),
              Spacer(),
              InkWell(
                onTap: ()async {
                  final uri = Uri.parse(article.url ?? '');
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                },
                child: Container(
                  width: 345.w,
                  height: 56.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text('View full article' , style: Theme.of(context).textTheme.displayMedium,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
