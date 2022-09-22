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
          backgroundColor: Color.fromARGB(255, 17, 17, 17),
          leading: Image(image: NetworkImage("https://images-platform.99static.com//rdYHyMIjkhJGK_KMb6v9g9auPeQ=/224x229:774x779/fit-in/590x590/99designs-contests-attachments/113/113731/attachment_113731403"),),
        
          centerTitle: true,
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
          title: Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Home Page"), Icon(Icons.home)],
          ),
        ),
        body:
        
        Container(
          decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://image.winudf.com/v2/image1/Y29tLkhEV2FsbHBhcGVyei5pbWFnZXMubG9ja3NjcmVlbi5CbGFja0NhcndhbGxwYXBlcnNfc2NyZWVuXzNfMTYxOTA2NDAzMV8wNTc/screen-3.jpg?fakeurl=1&type=.webp"))),
          child: ListView( 
              children: [
                Container(
                  child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Weclome to Home Page", style: TextStyle(color: Colors.white,fontSize: 24),), Icon(Ionicons.home,color: Colors.white,)],
                ),
           ) ],
                
           
            
    ),
        ),
      ),
    );
  }
}
