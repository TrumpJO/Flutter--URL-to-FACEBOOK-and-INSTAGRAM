class WebPages {
  String pageUrl = "https://en.wikipedia.org/wiki/HTTP_404";
  String imageURL =
      "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png";
  String brand = "Brand";
  String subTitle = "Join our X page";

  WebPages({
    required String this.pageUrl,
    required String this.brand,
    String this.subTitle = "aq",
    String this.imageURL =
        "https://themesfinity.com/wp-content/uploads/2018/02/default-placeholder.png",
  });

  String getPageUrl() {
    return pageUrl;
  }

  String getImageURL() {
    return imageURL;
  }

  String getSubTitle() {
    return subTitle;
  }

  String getBrand() {
    return brand;
  }
}
