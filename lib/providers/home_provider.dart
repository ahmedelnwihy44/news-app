import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/core/models/categories_model.dart';
import 'package:news/features/home/categories/categories_view.dart';
import 'package:news/features/home/sourses/sources_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier{
  Widget get homeView => _homeView;
  Widget _homeView = CategoriesView();
  String title="Home";


  ThemeMode themeMode = ThemeMode.dark;
  bool get isDark => themeMode == ThemeMode.dark;


  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? true;
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }


  Future<void> changeTheme(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    if (mode == 'Dark') {
      themeMode = ThemeMode.dark;
      await prefs.setBool('isDark', true);
    } else {
      themeMode = ThemeMode.light;
      await prefs.setBool('isDark', false);
    }
    _homeView = CategoriesView();
    notifyListeners();
  }

  void goToSourcesView(CategoriesModel category){
    title=category.title;
    _homeView = SourcesView(category: category,);
    notifyListeners();
  }
  void goToCategoriesView(){
    _homeView = CategoriesView();
    title="Home";
    notifyListeners();
  }
}