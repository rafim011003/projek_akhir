import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:project_coba/admin/ui/uis.dart';
import 'package:project_coba/auth/signIn.dart';
import 'package:project_coba/main.dart';
import 'package:project_coba/auth/onBoarding.dart';
import 'user/ui/uis.dart';
import 'package:project_coba/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 5),
  //       () => Navigator.of(context).pushReplacement(MaterialPageRoute(
  //           builder: (BuildContext context) => OnBoarding())));
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //     body: Container(
    //   decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage("assets/img/bckgrn1.png"), fit: BoxFit.cover)),
    //   child: AnimatedSplashScreen(
    //     splash: Image.asset(
    //       'assets/img/Group.png',
    //       height: 400.0,
    //       width: 400.0,
    //     ),
    //     nextScreen: OnBoarding(),
    //     splashIconSize: 400,
    //   ),
    // ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/bckgrn1.png"), fit: BoxFit.cover),
        ),

        child: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/img/Group.png',
            height: 400.0,
            width: 400.0,
          ),
          nextScreen: OnBoarding(),
          splashIconSize: 500,
          splashTransition: SplashTransition.scaleTransition,
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: <Widget>[
        //     Image.asset(
        //       'assets/img/Group.png',
        //       width: 200,
        //       height: 200,
        //     ),
        //     SizedBox(height: 24.0),
        //     SizedBox(
        //       height: 50,
        //     ),
        //     Padding(
        //       padding: EdgeInsets.fromLTRB(110, 0, 110, 0),
        //       child: LinearProgressIndicator(
        //         backgroundColor: Colors.teal[300],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
