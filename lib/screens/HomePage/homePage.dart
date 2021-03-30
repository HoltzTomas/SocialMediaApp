import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/Feed/Feed.dart';
import 'package:social_media_app/screens/Profile/Profile.dart';
import 'package:social_media_app/screens/HomePage/homePageHelpers.dart';
import 'package:social_media_app/screens/Chatroom/Chatroom.dart';
import 'package:social_media_app/services/FirebaseOperations.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<FirebaseOperations>(context, listen: false)
        .initUserData(context);
    super.initState();
  }

  ConstantColors constantColors = ConstantColors();
  final PageController homePageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: constantColors.darkColor,
        body: PageView(
          controller: homePageController,
          children: [Feed(), Chatroom(), Profile()],
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            setState(() {
              pageIndex = page;
            });
          },
        ),
        bottomNavigationBar:
            Provider.of<HomePageHelpers>(context, listen: false)
                .bottomNavBar(context, pageIndex, homePageController));
  }
}
