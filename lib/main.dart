import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/landingPage/landingHelpers.dart';
import 'package:social_media_app/screens/splashscreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: ThemeData(
            primaryColor: constantColors.blueColor,
            fontFamily: "Poppins",
            canvasColor: Colors.transparent),
      ),
      providers: [
        ChangeNotifierProvider(create: (_) => LandingHelpers())
      ],
    );
  }
}
