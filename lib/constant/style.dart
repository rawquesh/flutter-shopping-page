import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

double myFontSize(double fontSize) => ((((fontSize / Get.width) + (fontSize / Get.height)) / 3) + (fontSize / 10)) * 10;

double get screenHeight => Get.height;

double get screenWidth => Get.width;

TextStyle ptSansFont([double size = 15.1]) => GoogleFonts.ptSans(fontSize: myFontSize(size), letterSpacing: 0.2, color: Get.theme.accentColor);

SizedBox sizedBoxH(double height) => SizedBox(height: (height * 500) / Get.height);

SizedBox sizedBoxW(double width) => SizedBox(width: (width * 500) / Get.height);
// SizedBox sizedBoxP(double size) => SizedBox(width: myFontSize(size));

