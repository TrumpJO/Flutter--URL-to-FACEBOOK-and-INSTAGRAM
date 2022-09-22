import 'package:a_two/screens/discvoer.dart';
import 'package:flutter/material.dart';

import 'screens/Home_Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Discover();
  }
}
