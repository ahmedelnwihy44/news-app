import 'package:flutter/material.dart';
import 'package:news/api/models/article_response/Articles.dart';
import 'package:news/core/routes/routes_manager.dart';


class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.article});
   final Articles article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, RoutesManager.newsDetails,arguments: article);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: BoxBorder.all(color: Theme.of(context).dividerColor,width: 2),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(article.urlToImage??"https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png")),
            SizedBox(height: 10,),
            Text(article.title??"",style: Theme.of(context).textTheme.bodyMedium,),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Text(article.author??'',style: Theme.of(context).textTheme.bodySmall,)),
                Expanded(child: Text(article.publishedAt??"",style: Theme.of(context).textTheme.bodySmall)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
