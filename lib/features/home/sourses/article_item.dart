import 'package:flutter/material.dart';
import 'package:news/core/models/article_model.dart';
import 'package:news/core/resources/colors.dart';
import 'package:news/core/routes/routes_manager.dart';


class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});

  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, RoutesManager.newsDetails);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: BoxBorder.all(color: ColorsManager.white,width: 2),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(article.urlToImage)),
            SizedBox(height: 10,),
            Text(article.title,style: Theme.of(context).textTheme.bodyMedium,),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Text(article.author,style: Theme.of(context).textTheme.bodySmall,)),
                Expanded(child: Text(article.publishedAt,style: Theme.of(context).textTheme.bodySmall)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
