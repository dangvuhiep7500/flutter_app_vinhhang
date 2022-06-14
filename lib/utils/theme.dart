import 'package:flutter/material.dart';

const kColorPrimary = Color.fromARGB(255, 30, 36, 94);
const kColorOrange = Color(0xFFEF6C00);
const kColorWhite = Color(0xFFFFFFFF);
const kColorBlack = Color(0xFF000000);
const kColorGrey = Color(0xFF757575);
const kColorYellow = Color(0xFFFFEB3B);
const kColorCate = Color(0xFFFFECDF);
const kColorRed = Color(0xFFFF4848);
const kColorGreen = Color(0xFF4CAF50);
const kColorAmber = Color(0xFFFFE082);
const kSecondaryColor = Color(0xFF979797);

class PrimaryFont {
  static String fontFamily = '';

  static TextStyle bold(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontSize: size,
    );
  }

  static TextStyle medium(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: size,
    );
  }

  static TextStyle light(double size) {
    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      fontSize: size,
    );
  }
}

extension GetOrientation on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension GetSize on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
