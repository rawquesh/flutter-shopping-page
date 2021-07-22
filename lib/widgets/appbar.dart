import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:oznailsbeauty/constant/style.dart';
// import 'package:oznailsbeautysupply/constant/style.dart';
// import 'package:oznailsbeautysupply/constant/theme.dart';

AppBar myAppBar() {
  return AppBar(
    elevation: .1,
    // centerTitle: true,
    brightness: Brightness.dark,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black, size: myFontSize(23)),
    title: Image.asset(
      "assets/logo.jpg",
      height: kToolbarHeight - myFontSize(15),
    ),
    actions: [
      SizedBox(
        width: myFontSize(60),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Material(
            type: MaterialType.transparency,
            child: IconButton(
              splashRadius: 100,
              icon: Icon(LineIcons.shoppingCart),
              iconSize: myFontSize(25),
              onPressed: () {},
            ),
          ),
        ),
      )
    ],
  );
}
