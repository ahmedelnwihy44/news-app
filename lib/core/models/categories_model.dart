import 'package:news/core/resources/images.dart';

class CategoriesModel{
  String id;
  String title;
  String imagePath;
  CategoriesModel({required this.id,required this.title,required this.imagePath});
  static List<CategoriesModel> getCategories(bool isDark) {
    return [
      CategoriesModel(id: "general", title: "General", imagePath: isDark ? ImagesManagerDark.generalDark : ImagesManagerLight.general,),
      CategoriesModel(id: "business", title: "Business", imagePath: isDark ? ImagesManagerDark.businessDark:ImagesManagerLight.business),
      CategoriesModel(id: "entertainment", title: "Entertainment",imagePath: isDark ? ImagesManagerDark.entertainmemtDark:ImagesManagerLight.entertainmemt),
      CategoriesModel(id: "health", title: "Health", imagePath: isDark ? ImagesManagerDark.healthDark:ImagesManagerLight.health),
      CategoriesModel(id: "science", title: "Science", imagePath: isDark ? ImagesManagerDark.scienceDark:ImagesManagerLight.science),
      CategoriesModel(id: "sports", title: "Sports", imagePath: isDark ? ImagesManagerDark.sportsDark:ImagesManagerLight.sports),
      CategoriesModel(id: "technology", title: "Technology", imagePath: isDark ? ImagesManagerDark.technologyDark:ImagesManagerLight.technology),
    ];
  }
}
