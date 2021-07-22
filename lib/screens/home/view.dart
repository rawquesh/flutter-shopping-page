import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oznailsbeauty/constant/style.dart';
import 'package:oznailsbeauty/constant/theme.dart';
import 'package:oznailsbeauty/screens/home/data.dart';
import 'package:oznailsbeauty/widgets/appbar.dart';
import 'package:oznailsbeauty/widgets/cache_image.dart';
import 'package:oznailsbeauty/widgets/decoration.dart';
import 'package:oznailsbeauty/widgets/gradient_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: myAppBar(),
      body: ListView(
        cacheExtent: screenHeight,
        children: [
          HomeSlider(),
          sizedBoxH(10),
          HomeFeaturedProducts(),
          HomeSales(),
          sizedBoxH(10),
          HomeBrands(),
        ],
      ),
    );
  }
}

class HomeBrands extends StatelessWidget {
  const HomeBrands({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxH(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Brands',
            style: ptSansFont().copyWith(fontWeight: FontWeight.w500, letterSpacing: 1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: myFontSize(120),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: homeBrandsData().length,
            itemBuilder: (context, index) {
              final url = homeBrandsData()[index];
              return Container(
                width: myFontSize(150),
                padding: EdgeInsets.all(myFontSize(5)),
                child: cacheImage(url),
              );
            },
          ),
        ),
      ],
    );
  }
}

class HomeSales extends StatelessWidget {
  const HomeSales({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final data in homeSalesData())
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(data.url),
                        fit: BoxFit.cover,
                      ),
                      // color: Colors.black12,
                    ),
                    height: myFontSize(220),
                    width: double.infinity,
                    child: SizedBox.expand(
                      child: Container(
                        color: Colors.black.withOpacity(.15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  decoration: BoxDecoration(
                    color: themeColor.withOpacity(.9),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Text(data.title, style: ptSansFont(19).copyWith(color: Colors.white)),
                      sizedBoxH(5),
                      Text('VIEW >', style: ptSansFont(12).copyWith(color: Colors.white, letterSpacing: 2)),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}

class HomeFeaturedProducts extends StatelessWidget {
  const HomeFeaturedProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxH(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Featured Products',
            style: ptSansFont().copyWith(fontWeight: FontWeight.w500, letterSpacing: 1),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: homeFeaturedProductsData().length,
            itemBuilder: (context, index) {
              final product = homeFeaturedProductsData()[index];
              return Container(
                width: screenWidth / 2 - 20,
                margin: EdgeInsets.all(myFontSize(10)),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: buildDecoration(radius: 5, color: Colors.black12.withOpacity(.06)),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: cacheImage(product.url),
                      ),
                    ),
                    SizedBox(height: screenHeight * .001),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        product.title,
                        style: ptSansFont(14),
                      ),
                    ),
                    sizedBoxH(10),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: ptSansFont().copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    sizedBoxH(10),
                    CustomButton(
                      height: myFontSize(30),
                      width: screenWidth,
                      radius: 5,
                      onTap: () {},
                      text: "Add to cart",
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        _item('assets/home/54.jpg', 'Best Price On SNS Liquid'),
        _item('assets/home/60.jpg', 'Try Gelish Now'),
      ],
      options: CarouselOptions(
        aspectRatio: 17 / 9,
        viewportFraction: 1,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {},
      ),
    );
  }

  Widget _item(String path, String text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.cover,
                ),
                // color: Colors.black12,
              ),
              height: myFontSize(220),
              width: double.infinity,
              child: SizedBox.expand(
                child: Container(
                  color: Colors.black.withOpacity(.15),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              color: themeColor.withOpacity(.9),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(text, style: ptSansFont(19).copyWith(color: Colors.white)),
          )
        ],
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
    //   ),
    //   width: double.infinity,
    //   alignment: Alignment.center,
    //   child: Container(
    //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    //     decoration: BoxDecoration(
    //       color: Colors.black.withOpacity(.5),
    //       borderRadius: BorderRadius.circular(2),
    //     ),
    //     child: Text(text, style: ptSansFont(19).copyWith(color: Colors.white)),
    //   ),
    // );
  }
}
