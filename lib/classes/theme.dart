import 'package:flutter/material.dart';
import 'package:test_app/constants.dart';

class MyTheme {

  static final lightTheme =  ThemeData(
    primaryColor: kWhiteColor,
    brightness: Brightness.light,
    backgroundColor: kWhiteColor,
    scaffoldBackgroundColor: kWhiteColor,
    colorScheme: const ColorScheme.light(),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: kWhiteColor),
      bodyText2: TextStyle(color: kGreenColor),
      subtitle1: TextStyle(color: kBlackShadeColor),
    ),
    iconTheme: const IconThemeData(color: kWhiteColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(kGreenColor),
      ),
    ),
  );

}
