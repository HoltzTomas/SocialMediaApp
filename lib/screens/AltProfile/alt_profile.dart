import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/constants/Constantcolors.dart';
import 'package:social_media_app/screens/AltProfile/alt_profile_helper.dart';

class AltProfile extends StatelessWidget {
  final String userUid;
  AltProfile({@required this.userUid});
  final ConstantColors constantColors = ConstantColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          Provider.of<AltProfileHelper>(context, listen: false).appBar(context),
      body: SingleChildScrollView(
        child: Container(
          child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('users')
                .doc(userUid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else {
                return Column(
                  children: [
                    Provider.of<AltProfileHelper>(context, listen: false).headerProfile(context, snapshot, userUid),
                    Provider.of<AltProfileHelper>(context, listen: false).divider(),
                    Provider.of<AltProfileHelper>(context, listen: false).middleProfile(context, snapshot),
                    Provider.of<AltProfileHelper>(context, listen: false).footerProfile(context, snapshot),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                );
                  
              }
            },
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0)),
              color: constantColors.blueGreyColor.withOpacity(0.6)),
        ),
      ),
    );
  }
}
