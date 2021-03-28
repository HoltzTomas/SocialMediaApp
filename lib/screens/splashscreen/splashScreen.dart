import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/landingPage/landingPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ConstantColors constantColors = ConstantColors();

  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: LandingPage(), type: PageTransitionType.leftToRight)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: constantColors.darkColor,
        body: Center(
          child: RichText(
              text: TextSpan(
                  text: "the",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                  children: <TextSpan>[
                TextSpan(
                  text: "Social",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 34.0),
                )
              ])),
        ));
  }
}
