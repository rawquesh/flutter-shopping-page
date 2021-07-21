class FeaturedProductsModel {
  final String title;
  final String url;
  final double price;

  FeaturedProductsModel({this.title = "", this.url = "", this.price = .0});
}

List<FeaturedProductsModel> homeFeaturedProductsData() {
  return [
    FeaturedProductsModel(
      url: 'https://www.oznailsbeauty.com.au/assets/thumbL/CAR-FacialKit.jpg?20210309035759',
      price: 140.0,
      title: 'CARONLAB - Facial Waxing Kit 500g',
    ),
    FeaturedProductsModel(
      url: 'https://www.oznailsbeauty.com.au/assets/thumbL/GLSH-Basix.jpg?20210309035934',
      price: 74.95,
      title: 'Gelish Dip Basix Kit',
    ),
    FeaturedProductsModel(
      url: 'https://www.oznailsbeauty.com.au/assets/thumbL/GLSH-FrchKit-Xpress.jpg?20210309043851',
      price: 174.95,
      title: 'Gelish Xpress Dip Powder SNS French Kit - New Package',
    ),
    FeaturedProductsModel(
      url: 'https://www.oznailsbeauty.com.au/assets/thumbL/GLSH-XpressColKit.jpg?20210309035914',
      price: 154.95,
      title: 'Gelish Xpress Dip Powder SNS Color Kit - New Package',
    ),
  ];
}

List<FeaturedProductsModel> homeSalesData() {
  return [
    FeaturedProductsModel(url: 'assets/home/s1.jpg', title: 'COSMO 50% OFF'),
    FeaturedProductsModel(url: 'assets/home/s2.jpg', title: 'UNI 50% OFF'),
    FeaturedProductsModel(url: 'assets/home/s3.jpg', title: 'GELISH DIP SYSTEM'),
    FeaturedProductsModel(url: 'assets/home/s4.jpg', title: 'DND COLLECTION'),
    FeaturedProductsModel(url: 'assets/home/s5.jpg', title: 'ANC SPECIAL'),
    FeaturedProductsModel(url: 'assets/home/s6.jpg', title: 'CARONLAB WAXING'),
    FeaturedProductsModel(url: 'assets/home/s7.jpg', title: 'MOROCCANTAN'),

  ];
}
