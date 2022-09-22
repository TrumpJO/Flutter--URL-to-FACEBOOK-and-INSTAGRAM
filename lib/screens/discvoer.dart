// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:a_two/models/urlModel.dart';
import 'package:a_two/models/vehicles/car.dart';
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
    List carsBrand = [];
    List mercedesBenz_cars = [];
    List ferrari_cars = [];
    List porche_cars = [];
    carsBrand.addAll([mercedesBenz_cars, ferrari_cars, porche_cars]);

    void addAllCarsFor_MercedesBenz() {
      mercedesBenz_cars.add(
        Car(
            model: "AMG-GTS",
            brand: "MERCEDES BENZ",
            flag: 'de',
            price: 10000,
            imageURL:
                "https://virtuoart.com/public/uploads/preview/09c657fa13bdd432dd5d28c6b4c8f30e-171574438370oxbgcev3r6.jpg"),
      );
      mercedesBenz_cars.add(
        Car(
            model: "AMG-C63",
            brand: "MERCEDES BENZ",
            flag: 'de',
            price: 13000,
            imageURL:
                "https://purepng.com/public/uploads/large/purepng.com-white-mercedes-amg-c63-s-coupe-carcarvehicletransportmercedes-benzmercedes-amg-961524644163s7wbm.png"),
      );
      mercedesBenz_cars.add(
        Car(
            model: "C-CLASS",
            brand: "MERCEDES BENZ",
            flag: 'de',
            price: 15500,
            imageURL:
                "https://65e81151f52e248c552b-fe74cd567ea2f1228f846834bd67571e.ssl.cf1.rackcdn.com/ldm-images/2018-mercedes-benz-AMG-C_63-S-Cabriolet.png"),
      );
    }

    void addAllCarsFor_Ferrari() {
      ferrari_cars.add(
        Car(
            model: "488 GTB",
            brand: "Ferrari",
            price: 101,
            flag: 'it',
            imageURL:
                "https://www.pnglib.com/wp-content/uploads/2020/04/red-ferrari-488-gtb-car_5e91c617b1447.png"),
      );
      ferrari_cars.add(
        Car(
            model: "458 Spider",
            brand: "Ferrari",
            price: 202,
            flag: 'it',
            imageURL:
                "https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/640x400/quality/80/https://s.aolcdn.com/commerce/autodata/images/USC30FRC171A021001.jpg"),
      );
    }

    void addAllCarsFor_Porche() {
      porche_cars.add(
        Car(
            model: "Cayman",
            brand: "Porche",
            price: 111,
            flag: 'de',
            imageURL:
                "https://www.kindpng.com/picc/m/574-5744017_luxury-cars-for-less-porsche-cayman-white.png"),
      );
    }

    addAllCarsFor_MercedesBenz();
    addAllCarsFor_Ferrari();
    addAllCarsFor_Porche();
    ListView structureVehiecles(List<dynamic> vehiclesBrand) {
      return ListView.builder(
        itemCount: vehiclesBrand.length,
        itemBuilder: (BuildContext context, int columnIndex) {
          // Scroll GREEN
          return Container(
            color: Colors.grey.shade300,
            height: screenSide_Height / 2.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: vehiclesBrand[columnIndex].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(4, 4, 4, 8),
                  child: SizedBox(
                    width: screenSide_Width / 2,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 0, right: 5),
                            child: CircleFlag(
                                vehiclesBrand[columnIndex][index].getFlag(),
                                size: 33),
                            alignment: Alignment.topRight,
                          ),
                          SizedBox(
                            width: screenSide_Width / 2,
                            height: screenSide_Height / 4,
                            child: Image(
                              fit: BoxFit.contain,
                              image: NetworkImage(vehiclesBrand[columnIndex]
                                      [index]
                                  .getImageURL()),
                            ),
                          ),
                          cardText(
                            text: vehiclesBrand[columnIndex][index].getModel(),
                            fontSize: 18,
                          ),
                          cardText(
                            text: vehiclesBrand[columnIndex][index].getBrand(),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          cardText(
                            text:
                                "${vehiclesBrand[columnIndex][index].getPrice()}\$",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
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
    }

    iconTabs.addAll({
      Icon(Ionicons.car_sport): structureVehiecles(carsBrand),
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
