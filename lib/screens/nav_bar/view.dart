import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:animations/animations.dart';
import 'package:oznailsbeauty/constant/style.dart';
import 'package:oznailsbeauty/constant/theme.dart';
import 'package:oznailsbeauty/screens/account/view.dart';
import 'package:oznailsbeauty/screens/cart/view.dart';
import 'package:oznailsbeauty/screens/home/view.dart';
import 'package:oznailsbeauty/screens/shop/view.dart';

// import 'package:meme_baaz/screens/home/view2.dart';
// import 'package:meme_baaz/screens/upload/view.dart';

import 'controller.dart';

class MyNavBar extends StatelessWidget {
  final MyNavBarController controller = Get.put<MyNavBarController>(MyNavBarController());

  List<Widget> get _screens => [HomePage(), ShopPage(), CartPage(), AccountPage()];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: controller.willpopscope,
      child: Obx(
        () => Scaffold(
          body: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 150),
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
              return FadeThroughTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
            child: _screens[controller.index],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(.1),
                )
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: GNav(
                  haptic: true,
                  tabBorderRadius: 15,
                  selectedIndex: controller.index,
                  tabBackgroundGradient: myLinearGradient,
                  onTabChange: (value) => controller.index = value,
                  curve: Curves.easeInCirc,
                  duration: Duration(milliseconds: 300),
                  gap: 7,
                  activeColor: Colors.white,
                  color: Colors.black,
                  iconSize: myFontSize(20),
                  textStyle: ptSansFont(14).copyWith(color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  tabs: [
                    GButton(icon: LineIcons.home, text: 'Home'),
                    GButton(icon: LineIcons.search, text: 'Search'),
                    GButton(icon: LineIcons.shoppingBag, text: 'Orders'),
                    GButton(icon: LineIcons.user, text: 'Account')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
