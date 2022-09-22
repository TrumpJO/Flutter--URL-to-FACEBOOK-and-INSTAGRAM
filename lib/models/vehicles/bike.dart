// ignore_for_file: type_init_formals

import 'package:a_two/models/vehicles/vehicle.dart';

class Bike implements Vehicle {
  Bike({
    required String this.model,
    required String this.brand,
    String this.flag = "aq",
    String this.imageURL =
        "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png",
    double this.price = 0,
  });

  @override
  String flag = "aq";
  @override
  String imageURL =
      "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png";
  @override
  String model = "Model";
  @override
  String brand = "Brand";
  @override
  double price = 0;

  @override
  String getFlag() {
    return flag;
  }

  @override
  String getImageURL() {
    return imageURL;
  }

  @override
  String getModel() {
    return model;
  }

  @override
  String getBrand() {
    return brand;
  }

  @override
  double getPrice() {
    return price;
  }
}
