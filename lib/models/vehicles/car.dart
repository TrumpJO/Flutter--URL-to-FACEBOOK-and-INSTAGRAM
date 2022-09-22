class Car {
  String flag = "aq";
  String imageURL =
      "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png";
  String model = "Model";
  String brand = "Brand";
  double price = 0;

  Car({
    required String this.model,
    required String this.brand,
    String this.flag = "aq",
    String this.imageURL =
        "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png",
    double this.price = 0,
  });

  String getFlag() {
    return flag;
  }

  String getImageURL() {
    return imageURL;
  }

  String getModel() {
    return model;
  }

  String getBrand() {
    return brand;
  }

  double getPrice() {
    return price;
  }
}
