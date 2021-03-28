import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_app/constants/Constantcolors.dart';

class LandingHelpers with ChangeNotifier {
  final ConstantColors constantColors = ConstantColors();

  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/login.png"))),
    );
  }

  Widget taglineText(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.60,
        left: 10.0,
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 170.0,
          ),
          child: RichText(
              text: TextSpan(
                  text: "Are ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                  children: <TextSpan>[
                TextSpan(
                  text: "You ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                TextSpan(
                  text: "Social ",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                TextSpan(
                  text: "?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: constantColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                )
              ])),
        ));
  }

  Widget mainButton(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.78,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                  width: 80,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: constantColors.yellowColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    EvaIcons.emailOutline,
                    color: constantColors.yellowColor,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 80,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: constantColors.redColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    FontAwesomeIcons.google,
                    color: constantColors.redColor,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  width: 80,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: constantColors.blueColor),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    color: constantColors.blueColor,
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget privacyText(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.87,
      left: 20.0,
      right: 20.0,
      child: Container(
        child: Column(
          children: [
            Text(
              "By continuing you agree theSocial's Terms of",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12.0),
            ),
            Text(
              "Services & Privacy Policy",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
