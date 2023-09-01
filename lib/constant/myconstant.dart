import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = const Color.fromARGB(255, 205, 95, 181);
  static Color success = Color.fromARGB(146, 246, 248, 246);
  static Color warning = const Color.fromARGB(146, 248, 137, 73);
  static Color danger = const Color.fromARGB(146, 251, 9, 9);
  static Color info = const Color.fromARGB(146, 123, 159, 233);

  TextStyle h1Style() {
    return const TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold);
  }

  TextStyle h2Style() {
    return TextStyle(
        fontFamily: 'Raleway',
        fontSize: 18,
        color: primary,
        fontWeight: FontWeight.bold);
  }
}
