import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/features/home/categories/categories_view.dart';
import 'package:news/features/home/sourses/sources_view.dart';

class HomeProvider extends ChangeNotifier{
  Widget homeView = CategoriesView();
  String title="Home";


  ThemeMode themeMode = ThemeMode.dark;
  bool get isDark => themeMode == ThemeMode.dark;
  void changeTheme(String mode) {
    if (mode == 'Dark')
    { themeMode = ThemeMode.dark; }
    else { themeMode = ThemeMode.light;
    } notifyListeners();
  }

  void goToSourcesView(CategoriesModel category){
    title=category.title;
    homeView = SourcesView(category: category,);
    notifyListeners();
  }
  void goToCategoriesView(){
    homeView = CategoriesView();
    notifyListeners();
  }
}