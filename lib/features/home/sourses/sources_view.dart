import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/api/api_services.dart';
import 'package:news/api/models/sources_respons/Source.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/core/resources/colors.dart';

class SourcesView extends StatefulWidget {
   const SourcesView({super.key, required this.category});
final CategoriesModel category;

  @override
  State<SourcesView> createState() => _SourcesViewState();
}

class _SourcesViewState extends State<SourcesView> {
   @override
   void initState() {
     super.initState();
     ApiServices.getSources(CategoriesModel.categories[0]).then((value) {
       print('sources: ${value.sources?.length}');
     }).catchError((e) {
       print('error: $e');
     });
   }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          FutureBuilder(future: ApiServices.getSources(widget.category),
          builder: (context,snapshot)
           {
             if(snapshot.connectionState == ConnectionState.waiting)
               {
                 return const Center(child: CircularProgressIndicator(),);
               }
             if(snapshot.hasError)
               {
                 return Center(child: Text('error'),);
               }

             List<Source> sources = snapshot.data?.sources ?? [];
             return DefaultTabController(
               length: sources.length,
               child: TabBar(
                   isScrollable: true,
                   tabAlignment: TabAlignment.start,
                   dividerColor: Colors.transparent,
                   indicatorColor: ColorsManager.white,
                   labelStyle: GoogleFonts.inter(fontWeight: FontWeight.bold,fontSize: 16.sp,color: ColorsManager.white),
                   unselectedLabelStyle: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14.sp,color: ColorsManager.white),
                   tabs: sources.map((source)=> Tab(text: source.name,)).toList()
               ),
             );
           }
            ),
          SizedBox(height: 10.h,),
          /*Expanded(
            child: ListView.separated(
                itemBuilder: (context,index)=> ArticleItem(article: articles[index],),
                separatorBuilder: (context,index)=> SizedBox(height: 10.h,),
                itemCount: articles.length,
            ),
          ),*/
        ],
      ),
    );
  }
}
