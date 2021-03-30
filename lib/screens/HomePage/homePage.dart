import 'package:flutter/material.dart';
import 'package:social_media_app/constants/Constantcolors.dart';

class HomePage extends StatelessWidget {
  final ConstantColors constantColors = ConstantColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.redColor,
    );
  }
}
