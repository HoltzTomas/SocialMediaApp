import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/landingPage/landingHelpers.dart';

class LandingPage extends StatelessWidget {
  final ConstantColors constantColors = ConstantColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.whiteColor,
      body: Stack(
        children: [
          bodyColor(),
          Provider.of<LandingHelpers>(context, listen: false).bodyImage(context),
          Provider.of<LandingHelpers>(context, listen: false).taglineText(context),
          Provider.of<LandingHelpers>(context, listen: false).mainButton(context),
          Provider.of<LandingHelpers>(context, listen: false).privacyText(context),
        ],
      ),
    );
  }

  bodyColor() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5, 0.9
          ],
          colors: [
            constantColors.darkColor,
            constantColors.blueGreyColor,

          ]
        )
      ),
    );
  }
}
