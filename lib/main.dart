import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/config/theme_manager.dart';
import 'package:news/core/routes/routes_manager.dart';
import 'package:provider/provider.dart';
import 'providers/home_provider.dart';

void main (){
  runApp(ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const NewsApp()));
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Consumer<HomeProvider>(
        builder: (context, homeProvider, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesManager.splash,
          routes: RoutesManager.router,
          theme: ThemeManager.light,
          darkTheme: ThemeManager.dark,
          themeMode: homeProvider.themeMode,
        ),
      ),
    );
  }
}
