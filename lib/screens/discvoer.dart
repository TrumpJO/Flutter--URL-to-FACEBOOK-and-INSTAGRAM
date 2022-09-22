// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:a_two/models/other/WebPages';
import 'package:a_two/models/urlModel.dart';
import 'package:a_two/models/vehicles/bike.dart';
import 'package:a_two/models/vehicles/car.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:circle_flags/circle_flags.dart';

class Discover extends StatelessWidget {
  Discover({super.key});

  @override
  Widget build(BuildContext context) {
    Map<Widget, Widget> iconTabs = {};
    var screenSide_Width = MediaQuery.of(context).size.width;
    var screenSide_Height = MediaQuery.of(context).size.height;

    // CARS
    List carsBrand = [];
    List mercedesBenz_cars = [];
    List ferrari_cars = [];
    List porche_cars = [];
    List webPages = [];
    carsBrand.addAll([mercedesBenz_cars, ferrari_cars, porche_cars]);

    void addAll_Cars_MercedesBenz() {
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

    void addAll_Cars_Ferrari() {
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

    void addAll_Cars_Porche() {
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

    addAll_Cars_MercedesBenz();
    addAll_Cars_Ferrari();
    addAll_Cars_Porche();

    // BIKES
    List bikesBrand = [];
    List harleyDavidson_bikes = [];
    List honda_bikes = [];
    List bmw_bikes = [];

    bikesBrand.addAll([harleyDavidson_bikes, honda_bikes, bmw_bikes]);

    void addAll_Bikes_HarleyDavidson() {
      harleyDavidson_bikes.add(
        Bike(
            model: "V-ROD",
            brand: "HARLEY DAVIDSON",
            flag: 'us',
            price: 2200,
            imageURL:
                "https://bd.gaadicdn.com/processedimages/harley-davidson/harley-davidson-v-rod/494X300/harley-davidson-v-rod_3.jpg?tr=w-360"),
      );
      harleyDavidson_bikes.add(
        Bike(
            model: "SUPER LOW",
            brand: "HARLEY DAVIDSON",
            flag: 'us',
            price: 2880,
            imageURL:
                "https://www.harley-davidson.com/content/dam/h-d/images/product-images/bikes/motorcycle/2020/2020-superlow/2020-superlow-e54/360/2020-superlow-e54-motorcycle-08.jpg?impolicy=myresize&rw=1600"),
      );
      harleyDavidson_bikes.add(
        Bike(
            model: "FATBOY",
            brand: "HARLEY DAVIDSON",
            flag: 'us',
            price: 1500,
            imageURL:
                "https://www.harley-davidson.com/content/dam/h-d/images/product-images/bikes/motorcycle/2022/2022-fat-boy-114/2022-fat-boy-114-f65/360/2022-fat-boy-114-f65-motorcycle-07.jpg?impolicy=myresize&rw=1600"),
      );
    }

    void addAll_Bikes_Honda() {
      honda_bikes.add(
        Bike(
            model: "Rebel",
            brand: "HONDA",
            price: 999,
            flag: 'jp',
            imageURL:
                "https://motorcycles.news/wp-content/uploads/2019/11/Honda-Rebel-2020-Motorcycle-News-App-Motorrad-Nachrichten-App-MotorcyclesNews-12.jpg"),
      );
      honda_bikes.add(
        Bike(
            model: "Shadow Aero",
            brand: "HONDA",
            price: 800,
            flag: 'jp',
            imageURL:
                "https://powersports.honda.com/street/cruiser/-/media/products/family/shadow-aero/trims/trim-main/shadow-aero-abs/2022/2022-shadow-aero-abs-ultra_blue_metallic-650x380.png"),
      );
    }

    void addAll_Bikes_BMW() {
      bmw_bikes.add(
        Bike(
            model: "R 1200 Gs",
            brand: "BMW",
            price: 6969,
            flag: 'de',
            imageURL:
                "https://mediapool.bmwgroup.com/cache/P9/201703/P90252893/P90252893-r-1200-gs-xdrive-hybrid-03-2017-599px.jpg"),
      );

      bmw_bikes.add(
        Bike(
            model: "K1300S",
            brand: "BMW",
            price: 29000,
            flag: 'de',
            imageURL:
                "https://th.bing.com/th/id/R.d8faf42759624fbeaab8eeb3def7e5c6?rik=hBC2Dfel7hvKBg&riu=http%3a%2f%2fwww.pngpix.com%2fwp-content%2fuploads%2f2016%2f07%2fPNGPIX-COM-BMW-K1300S-White-Sport-Motorcycle-Bike-PNG-Image.png&ehk=xTPp8iqbzGmWOpcHcmpolMF%2bSzuJEmpNzl30%2ft97JTU%3d&risl=&pid=ImgRaw&r=0"),
      );

      bmw_bikes.add(
        Bike(
            model: "Daivoo",
            brand: "BMW",
            price: 4900,
            flag: 'de',
            imageURL:
                "https://th.bing.com/th/id/R.9d8c5449ff3767a009c5085722b82caa?rik=ITTPbiO7hEhAWg&riu=http%3a%2f%2f4.bp.blogspot.com%2f-L1cGTDgCju0%2fUNghvAcs5WI%2fAAAAAAAAC3Q%2fsgo3Wnt9VLc%2fs1600%2f10.jpg&ehk=PVLUIspOTX39JD5UW5D6Z9lgMNCwsRs6wL%2f8XQ7tbNI%3d&risl=&pid=ImgRaw&r=0"),
      );

      bmw_bikes.add(
        Bike(
            model: "Magliozzi",
            brand: "BMW",
            price: 11000,
            flag: 'de',
            imageURL:
                "https://i.pinimg.com/originals/9c/bf/5b/9cbf5bfdc5585a316fc59aa0899673fa.jpg"),
      );
    }

    addAll_Bikes_HarleyDavidson();
    addAll_Bikes_Honda();
    addAll_Bikes_BMW();

    // WEBS
    webPages.add(WebPages(
        brand: "Mercedes-Benz",
        pageUrl: 'https://www.mercedes-benz.com/en/',
        imageURL:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/1200px-Mercedes-Logo.svg.png",
        subTitle: "Join our Mercedes-Benz page"));

    webPages.add(WebPages(
        brand: "Ferrari",
        pageUrl: 'https://www.ferrari.com/en-JO',
        imageURL:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjWHkwaInDn7GbeEAsPBMKSGv8rAkoqFmwAtlLLa3mufhwOMKNMtvVuVKvGJEk3SGyTIE&usqp=CAU",
        subTitle: "Join our Ferrari page"));

    webPages.add(WebPages(
        brand: "Porsche",
        pageUrl: 'https://www.porsche.com/middle-east/_jordan_/',
        imageURL:
            "https://png.monster/wp-content/uploads/2022/02/png.monster-758.png",
        subTitle: "Join our Porsche page"));

    webPages.add(WebPages(
        brand: "BMW",
        pageUrl: 'https://www.bmw.com/en/index.html',
        imageURL:
            "https://png.monster/wp-content/uploads/2021/03/pngwing.com-4-208ee93f-370x370.png",
        subTitle: "Join our BMW page"));

    webPages.add(WebPages(
        brand: "Harley Davidson",
        pageUrl: 'https://www.harley-davidson.com/ac/en/index.html',
        imageURL:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Harley-Davidson_logo.svg/2560px-Harley-Davidson_logo.svg.png",
        subTitle: "Join our Harley Davidson page"));

    var webPage = ListView.builder(
        itemCount: webPages.length,
        itemBuilder: (BuildContext context, int index) {
          return URlClass(
            myfunction: () => goToThisPage(webPages[index].getPageUrl()),
            carBrandsImage: webPages[index].getImageURL(),
            myplatformSubTitle: webPages[index].getSubTitle(),
            myplatformTitle: webPages[index].getBrand(),
          );
        });

    ListView structureVehiecles(List<dynamic> vehiclesBrand) {
      return ListView.builder(
        itemCount: vehiclesBrand.length,
        itemBuilder: (BuildContext context, int columnIndex) {
          // Scroll GREEN
          return Container(
            color: Color.fromARGB(255, 0, 0, 0),
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
                            child: InteractiveViewer(
                              child: Image(
                                fit: BoxFit.contain,
                                image: NetworkImage(vehiclesBrand[columnIndex]
                                        [index]
                                    .getImageURL()),
                              ),
                            ),
                          ),
                          cardText(
                            text: vehiclesBrand[columnIndex][index].getModel(),
                            fontSize: 16,
                          ),
                          cardText(
                            text: vehiclesBrand[columnIndex][index].getBrand(),
                            fontSize: 20,
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
      Icon(Ionicons.bicycle): structureVehiecles(bikesBrand),
      Icon(Ionicons.share_social): webPage
    });

    return DefaultTabController(
      length: iconTabs.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Vehicles"),
          centerTitle: true,
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
