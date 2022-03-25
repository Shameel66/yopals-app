import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/Auth/login.dart';
import 'package:yopals/screens/app_screens/profile/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yopals',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: AppColors.primaryColor, backgroundColor: Color(0xFFE5E5E5)),
      home: ProfileScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 1500), (){
      Get.off(() => Login(), transition: GetTransition.pageTransition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 200.0,
            height: 200.0,
            child: Image(
              image: AssetImage(
                'assets/images/logo.png'
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
