import 'package:a_two/screens/discvoer.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Discover();
                  }));
                },
                icon: Icon(Ionicons.apps_outline),
              ),
            )
          ],
          title: Row(
            children: [Text("Home Page"), Icon(Icons.home)],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Weclome Page"), Icon(Ionicons.home)],
          ),
        ),
      ),
    );
  }
}
