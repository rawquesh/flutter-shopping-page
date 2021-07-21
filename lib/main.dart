import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oznailsbeauty/constant/theme.dart';
import 'package:oznailsbeauty/screens/nav_bar/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'oznailsbeauty',
      theme: lightThemeData,
      themeMode: ThemeMode.light,
      home: MyNavBar(),
    );
  }
}
