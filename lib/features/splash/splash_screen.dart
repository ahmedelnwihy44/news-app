import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/core/resources/colors.dart';
import 'package:news/core/resources/images.dart';
import 'package:news/core/routes/routes_manager.dart';

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
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(ImagesManager.splashImage),
            Spacer(),
            Center(child: Text("News App",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w600),)),
            SizedBox(height: 10,),
            Center(child: Text("Supervised by Ahmed Elnwihy",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),)),
          ],
        ),
      ),
    );
  }
}
