import 'dart:convert';
import 'package:news/core/models/categories_model.dart';
import 'package:http/http.dart' as http;
import 'models/sources_respons/Sources_response.dart';

class ApiServices {
  static const baseUrl = 'newsapi.org';
  static const apiKey = '8bfd48d406f745daa59ef429bc570c25';
  static const sourceEndPoint = '/v2/top-headlines/sources';
  static Future<SourcesResponse> getSources(CategoriesModel category) async {
    Uri url = Uri.https(baseUrl, sourceEndPoint, {
      'apiKey': apiKey,
      'category': category.id,
    });

    var sourceResponse = await http.get(url);
    print('=== STATUS CODE: ${sourceResponse.statusCode}');
    print('=== BODY: ${sourceResponse.body}');

    var json = jsonDecode(sourceResponse.body);
    return SourcesResponse.fromJson(json);
  }
  }
