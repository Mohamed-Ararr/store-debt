import 'package:flutter/material.dart';
import 'package:storedebt/Core/Style%20Utils/AppColors.dart';

class AppFonts {
  static TextStyle appTitleStyle = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle miniAppTitleStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle regular20BoldWhite = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle font_18_white = TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  static TextStyle font_18_black_bold = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static TextStyle font_14_grey = TextStyle(
    fontSize: 14,
    color: Color.fromARGB(255, 151, 151, 151),
  );

  static TextStyle defaultWithBold = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static TextStyle defaultWithBoldWhite = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle font_13 = TextStyle(
    fontSize: 13,
  );

  static TextStyle font_13_grey = TextStyle(
    fontSize: 13,
    color: AppColors.greyColor,
  );
}
