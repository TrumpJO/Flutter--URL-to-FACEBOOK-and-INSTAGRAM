// import 'dart:ffi';

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
    required this.carBrandsImage,
    required this.myplatformSubTitle,
    required this.myplatformTitle,
  });

  String? myplatformTitle;
  String? myplatformSubTitle;
  String? carBrandsImage;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: GestureDetector(
        onTap: myfunction,
        child: Column(children: [
          Card(
            color: Colors.white.withAlpha(232),
            child: ListTile(
              title: Text("$myplatformTitle"),
              subtitle: Text("$myplatformSubTitle"),
              leading: Image.network("${carBrandsImage}"),
            ),
          ),
        ]),
      ),
    );
  }
}
