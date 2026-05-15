import 'dart:convert';
import 'package:news/api/models/article_response/Article_response.dart';
import 'package:news/api/models/sources_respons/Source.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:http/http.dart' as http;
import 'models/sources_respons/Sources_response.dart';

class ApiServices {
  static const baseUrl = 'newsapi.org';
  static const apiKey = '8bfd48d406f745daa59ef429bc570c25';
  static const sourceEndPoint = '/v2/top-headlines/sources';
  static const String articlesEndPoint = "/v2/everything";
  static Future<SourcesResponse> getSources(CategoriesModel category) async {
    Uri url = Uri.https(baseUrl, sourceEndPoint, {
      'apiKey': apiKey,
      'category': category.id,
    });

    var sourceResponse = await http.get(url);

    var json = jsonDecode(sourceResponse.body);
    return SourcesResponse.fromJson(json);
  }
  static Future<ArticlesResponse> getArticles(Source source)async{

    var url = Uri.https(baseUrl,articlesEndPoint, {
      "apiKey": apiKey,
      "sources": source.id,
    });
    http.Response serverResponse = await http.get(url);
    var json =  jsonDecode(serverResponse.body);
    return ArticlesResponse.fromJson(json);
  }
  }
