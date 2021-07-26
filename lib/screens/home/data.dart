import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

List<String> homeBrandsData() {
  return [
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/04/204.png?1599017984',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/44/244.png?1599018634',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/95/195.jpg?1599018304',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/13/213.png?1599018495',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/40/240.jpg?1599018787',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/82/282.jpg?1599524710',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/23/223.jpg?1599034300',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/69/169.jpg?1599034471',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/85/185.jpg?1599018920',
    'https://www.oznailsbeauty.com.au/assets/webshop/cms/33/233.jpg?1599524418',
  ];
}

class HomeLayerModel {
  final String title;
  final String subTitle;
  final IconData? icon;

  HomeLayerModel({this.title = '', this.subTitle = '', this.icon});
}

List<HomeLayerModel> homeLayerData() {
  return [
    HomeLayerModel(
      title: 'The Fastest And Most Affordable Delivery Service',
      subTitle:
          'Saving time and money with the fastest and the most affordable delivery service from Australia Post. Free Click And Collect is also available.',
      icon: FontAwesomeIcons.truck,
    ),
    HomeLayerModel(
      title: 'Money Back Guarantee',
      subTitle: 'Product any fault within 30 days for an exchange.',
      icon: FontAwesomeIcons.dollarSign,
    ),
    HomeLayerModel(
      title: 'Discount Up To 20% For Wholesale Account',
      subTitle: 'Register wholesale account to get up to 20% discount if you are a beauty salon owner.',
      icon: FontAwesomeIcons.rocket,
    ),
  ];
}

class DrawerCategories {
  final String title;
  final String id;
  final List<DrawerItem> items;

  DrawerCategories(this.title, {this.id = '', this.items = const []});
}

class DrawerItem {
  final String title;
  final String id;

  DrawerItem(this.title, {this.id = ''});
}

List<DrawerCategories> drawerData() {
  return [
    DrawerCategories(
      'Nails',
      items: [
        DrawerItem('Dipping System'),
        DrawerItem('Nail & Gel Polish'),
        DrawerItem('Nail Electrical Equipment'),
        DrawerItem('Nail Accessories'),
        DrawerItem('Hard Gel & Acrylics'),
      ],
    ),
    DrawerCategories(
      'Mani and Pedicure',
      items: [
        DrawerItem('Mani & Pedicure Care Tool'),
        DrawerItem('Sterilizing & Remover'),
        DrawerItem('Scrub & Massage Lotaion'),
      ],
    ),
    DrawerCategories(
      'Hair Care',
      items: [
        DrawerItem('Hair Care And Styling'),
        DrawerItem('Hair Electrical And Tool'),
        DrawerItem('Hair Accessories'),
      ],
    ),
    DrawerCategories(
      'Waxing',
      items: [
        DrawerItem('Waxing Solution'),
        DrawerItem('Waxing Tool And Accessories'),
        DrawerItem('Pre & Post Waxing Solution'),
      ],
    ),
    DrawerCategories('Tanning', items: [
      DrawerItem('Tanning Solution'),
      DrawerItem('Tanning Tools And Accessories'),
    ]),
    DrawerCategories(
      'Lash & Brow',
      items: [
        DrawerItem('Last & Brow Solution'),
        DrawerItem('Tools & Accessories'),
      ],
    ),
    DrawerCategories('Furniture', items: [DrawerItem('Chair')]),
    DrawerCategories(
      'Brand',
      items: [
        DrawerItem('Dipping System'),
        DrawerItem('Nail Lacquer And Gel Polish'),
        DrawerItem('Waxing & Tanning'),
        DrawerItem('Lash & Braw'),
      ],
    ),
  ];
}
