// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:a_two/models/urlModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatelessWidget {
  Discover({super.key});

  Map<Widget, Widget> iconTabs = {};

  @override
  Widget build(BuildContext context) {
    iconTabs.addAll({
      Icon(Icons.phone): Image(
        image: NetworkImage(
            "https://th.bing.com/th/id/OIF.QUKFnHfXJqbRZTuMXlF6mA?pid=ImgDet&rs=1"),
      ),
      Icon(Icons.laptop): Column(
        children: [
          URlClass(
            myfunction: () => goToThisPage('https://www.facebook.com'),
            myplatformIcon: Icons.facebook,
            myplatformSubTitle: "join our facebook page",
            myplatformTitle: "Facebook",
          ),
          URlClass(
            myfunction: () =>
                goToThisPage('https://www.instagram.com/abcit000/'),
            myplatformIcon: Ionicons.logo_instagram,
            myplatformSubTitle: "join our instagram page",
            myplatformTitle: "Instagram",
          ),
        ],
      ),
    });

    return DefaultTabController(
      length: iconTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("hi discvoer page"),
          bottom: TabBar(
            tabs: iconTabs.keys.toList(),
          ),
        ),
        body: TabBarView(
          children: iconTabs.values.toList(),
        ),
      ),
    );
  }
}
