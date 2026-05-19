import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/core/resources/images.dart';
import 'package:news/core/routes/routes_manager.dart';
import 'package:provider/provider.dart';
import 'package:news/providers/home_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, RoutesManager.home);
    });
  }
  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(homeProvider.isDark? ImagesManagerDark.splashImageDark : ImagesManagerLight.splashImage),
            Spacer(),
            Center(child: Text("News App",style: Theme.of(context).textTheme.bodyLarge,)),
            SizedBox(height: 10,),
            Center(child: Text("Supervised by Flutter",style: Theme.of(context).textTheme.bodySmall,)),
          ],
        ),
      ),
    );
  }
}
