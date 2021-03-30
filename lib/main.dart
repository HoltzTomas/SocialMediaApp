import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/landingPage/landingHelpers.dart';
import 'package:social_media_app/screens/landingPage/landingServices.dart';
import 'package:social_media_app/screens/splashscreen/splashScreen.dart';
import 'package:social_media_app/services/Authentication.dart';
import 'package:social_media_app/services/FirebaseOperations.dart';
import 'package:social_media_app/screens/landingPage/landingUtils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        ChangeNotifierProvider(create: (_) => LandingUtils()),
        ChangeNotifierProvider(create: (_) => FirebaseOperations()),
        ChangeNotifierProvider(create: (_) => LandingServices()),
        ChangeNotifierProvider(create: (_) => Authentication()),
        ChangeNotifierProvider(create: (_) => LandingHelpers())
      ],
    );
  }
}
