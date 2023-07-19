import 'dart:math';
import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

class Palette {
  static const Color seaserpent = Color(0xff61C1C9);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color lightgrey = Color(0x73B4B1BD);
  static const Color red = Color(0xffF44336);
  static const Color grey = Color(0xff393939);
  
  // static const Color lightgrey = Color(0x8C828282);
  // static const Color lightblue = Color(0xff70F8FF);
  // static const Color skyblue = Color(0xff70C8FF);
  // static const Color navyblue = Color(0xff707AFF);
  // static const Color darkWhite = Color.fromARGB(255, 235, 235, 235);
  // static const Color grey = Color(0xFF7C8483);
  // static const Color hintGrey = Color(0xFF989BA2);
  // static const Color yellow = Color(0xFFFFCC49);
  // static const Color blueInformation = Color(0xFF3384FF);
  // static const Color green = Color(0xFF48B527);
  // static const Color textColor = Color(0xFF2F2E41);
  // static const Color homeButtonGrey = Color(0xFFAEB0BB);
  // static const Color buttonBackground = Color(0xFFDEE5F8);
  // static const Color location = Color(0xFF76B5FA);
  // static const Color faceid = Color(0xFF9E616A);
  // static const Color notifications = Color(0xFF48B527);
  // static const Color language = Color(0xFFFFB8B8);
  // static const Color help = Color(0xFF2A77B7);
  // static const Color privacyPolicy = Color(0xFF37393F);
  // static const Color orange = Color(0xFFFFA500);
  // static const Color logOut = Color(0xFFF32423);
}
