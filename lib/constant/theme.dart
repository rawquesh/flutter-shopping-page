import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oznailsbeauty/constant/style.dart';

final lightThemeData = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  canvasColor: const Color(0xFFD0FFFF),
  hintColor: Colors.black,
  accentColor: Colors.black87,
  iconTheme: IconThemeData(color: Colors.black, size: myFontSize(25)),
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    backgroundColor: themeColor,
  ),
);

const themeColor = Color(0xff95b675);

const Color themeColor3 = Color(0xFFB0D58D);

const myLinearGradient = LinearGradient(colors: [themeColor, themeColor3]);
