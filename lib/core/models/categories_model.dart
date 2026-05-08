import 'package:news/core/resources/images.dart';

class CategoriesModel{
  String id;
  String title;
  String imagePath;
  CategoriesModel({required this.id,required this.title,required this.imagePath});
  static List<CategoriesModel>categories=[
    CategoriesModel(id: "general", title: "General", imagePath: ImagesManager.general),
    CategoriesModel(id: "business", title: "Business", imagePath: ImagesManager.business),
    CategoriesModel(id: "entertainment", title: "Entertainment", imagePath: ImagesManager.entertainmemt),
    CategoriesModel(id: "health", title: "Health", imagePath: ImagesManager.health),
    CategoriesModel(id: "science", title: "Science", imagePath: ImagesManager.science),
    CategoriesModel(id: "sports", title: "Sports", imagePath: ImagesManager.sports),
    CategoriesModel(id: "technology", title: "Technology", imagePath: ImagesManager.technology),
  ];
}
