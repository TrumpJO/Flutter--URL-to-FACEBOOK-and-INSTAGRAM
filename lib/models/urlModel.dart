import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> goToThisPage(String pageURL) async {
  Uri pageURI = Uri.parse(pageURL);
  if (!await launchUrl(pageURI)) {
    throw 'Could not launch $pageURI';
  }
}

class URlClass extends StatelessWidget {
  URlClass({
    required this.myfunction,
    required this.myplatformIcon,
    required this.myplatformSubTitle,
    required this.myplatformTitle,
  });

  String? myplatformTitle;
  String? myplatformSubTitle;
  IconData? myplatformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: Column(children: [
        ListTile(
          title: Text("$myplatformTitle"),
          subtitle: Text("$myplatformSubTitle"),
          leading: Icon(myplatformIcon),
        ),
      ]),
    );
  }
}
