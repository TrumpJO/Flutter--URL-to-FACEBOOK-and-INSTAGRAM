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
    // ListView RED
    var cars = ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        // Scroll GREEN
        return SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Card(
       elevation: 4.0,
       child: Column(
         children: [
           ListTile(
             title: Text("heading"),
             subtitle: Text("subheading"),
             trailing: Icon(Icons.favorite_outline),
           ),
           Container(
             height: 200.0,
             child: Text("Image "),
           ),
           Container(
             padding: EdgeInsets.all(16.0),
             alignment: Alignment.centerLeft,
             child: Text("supportingText"),
           ),
           ButtonBar(
             children: [
               TextButton(
                 child: const Text('CONTACT AGENT'),
                 onPressed: () {/* ... /},
               ),
               TextButton(
                 child: const Text('LEARN MORE'),
                 onPressed: () {/ ... */},
               )
             ],
           )
         ],
       ));
            },
          ),
        );
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Card(
        //         child: Text("data"),
        //       )
        //     ],
        //   ),
        // );
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
}
