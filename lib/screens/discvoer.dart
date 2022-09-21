import 'package:a_two/models/urlModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("hi discvoer page"),
          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Icons.laptop)),
              IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/R.bd7a1275e49cb89f181c3c05e55c19cc?rik=o%2bdDuR%2bY7C4POw&pid=ImgRaw&r=0")),
          Image(
              image: NetworkImage(
                  "https://th.bing.com/th/id/OIF.QUKFnHfXJqbRZTuMXlF6mA?pid=ImgDet&rs=1")),
          Column(
            children: [
              URlClass(
                myfunction: Facebook_Function,
                myplatformIcon: Icons.facebook,
                myplatformSubTitle: "join our facebook page",
                myplatformTitle: "Facebook",
              ),
              URlClass(
                myfunction: instagram_function,
                myplatformIcon: Ionicons.logo_instagram,
                myplatformSubTitle: "join our instagram page",
                myplatformTitle: "Instagram",
              ),
      
            ],
          ),
        ]),
      ),
    );
  }
}
