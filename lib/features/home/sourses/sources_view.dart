import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/core/models/article_model.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/core/models/source_model.dart';
import 'package:news/core/resources/colors.dart';
import 'package:news/features/home/sourses/article_item.dart';

class SourcesView extends StatefulWidget {
  final CategoriesModel category;
   SourcesView({super.key, required this.category});

  @override
  State<SourcesView> createState() => _SourcesViewState();
}

class _SourcesViewState extends State<SourcesView> {
   List<SourceModel>sources=[
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
     SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
   ];

   List<ArticleModel>articles=[
     ArticleModel(
         source: SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
         id: "abc-news",
         name: "ABC News",
         description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
         url: "https://abcnews.go.com",
         category: "general",
         language: "en",
         country: "us"
     ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
     ArticleModel(
         source: SourceModel(
             id: "abc-news",
             name: "ABC News",
             description: "Your trusted source for breaking news, analysis, exclusive interviews, headlines, and videos at ABCNews.com.",
             url: "https://abcnews.go.com",
             category: "general",
             language: "en",
             country: "us"
         ),
         author: "Joel Khalili",
         title: "Inside a Wild Bitcoin Heist: Five-Star Hotels, Cash-Stuffed Envelopes, and Vanishing Funds",
         description: "Sophisticated crypto scams are on the rise. But few of them go to the lengths one bitcoin mining executive experienced earlier this year.",
         url: "https://www.wired.com/story/bitcoin-scam-mining-as-service/",
         urlToImage: "https://media.wired.com/photos/6913b909f757bec53ccf7811/191:100/w_1280,c_limit/Bitcoin-Heist-Business-1304706668.jpg",
         publishedAt: "2025-11-17T10:00:00Z",
         content: "As Kent Halliburton stood in a bathroom at the Rosewood Hotel in central Amsterdam, thousands of miles from home, running his fingers through an envelope filled with 10,000 in crisp banknotes, he sta… [+2362 chars]"
     ),
   ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DefaultTabController(
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
          ),
          SizedBox(height: 10.h,),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context,index)=> ArticleItem(article: articles[index],),
                separatorBuilder: (context,index)=> SizedBox(height: 10.h,),
                itemCount: articles.length,
            ),
          ),
        ],
      ),
    );
  }
}
