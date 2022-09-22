// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:a_two/models/urlModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:circle_flags/circle_flags.dart';

class Discover extends StatelessWidget {
  Discover({super.key});

  Map<Widget, Widget> iconTabs = {};

  @override
  Widget build(BuildContext context) {
    var screenSide_Width = MediaQuery.of(context).size.width;
    var screenSide_Height = MediaQuery.of(context).size.height;
    // ListView RED
    var cars = ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        // Scroll GREEN
        return Container(
          color: Colors.grey.shade300,
          height: screenSide_Height / 2.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(4, 4, 4, 8),
                child: SizedBox(
                  width: screenSide_Width / 2,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0, right: 5),
                          child: CircleFlag('de', size: 33),
                          alignment: Alignment.topRight,
                        ),
                        SizedBox(
                          width: screenSide_Width / 2,
                          child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://th.bing.com/th/id/R.b98b4d71e6aa2fb407f96b3e5099456f?rik=yuWyx1%2fQG2PN8A&riu=http%3a%2f%2fwww.baltana.com%2ffiles%2fwallpapers-2%2fWhite-Car-HD-Images-03598.jpg&ehk=S%2bKJrIMiQLFK2Xp9vcpCXmY6NYiuCoktgS7P6HHPcDM%3d&risl=&pid=ImgRaw&r=0")),
                        ),
                        cardText(
                          text: "Model",
                          fontSize: 18,
                        ),
                        cardText(
                          text: "Brand",
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        cardText(
                          text: "100\$",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );

    iconTabs.addAll({
      Icon(Ionicons.car_sport): cars,
      Icon(Ionicons.bicycle): Image(
        image: NetworkImage(
            "https://th.bing.com/th/id/OIF.QUKFnHfXJqbRZTuMXlF6mA?pid=ImgDet&rs=1"),
      ),
      Icon(Ionicons.share_social): Column(
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

  Container cardText({
    required String text,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
