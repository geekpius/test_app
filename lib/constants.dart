import 'package:flutter/material.dart';

const kMultiplier = 0.0012;
const kMultiplierHalf = 0.0006;
const kSize6 = 6.0;
const kSize8 = 8.0;
const kSize10 = 10.0;
const kSize11 = 11.0;
const kSize12 = 12.0;
const kSize13 = 13.0;
const kSize14 = 14.0;
const kSize16 = 16.0;
const kSize17 = 17.0;
const kSize18 = 18.0;
const kSize20 = 20.0;
const kSize24 = 24.0;
const kSize25 = 25.0;
const kSize30 = 30.0;
const kSize32 = 32.0;
const kSize34 = 34.0;
const kSize40 = 40.0;
const kSize44 = 44.0;

const kWhiteColor = Color(0xFFFFFFFF);
const kBlackColor = Color(0xFF000000);
const kGreenColor = Color(0xFF16F581);
const kBlackShadeColor = Color(0xFF1C1C1E);


const kPagePadding = 24.0;
const kPageTopPadding = 32.0;

const kBoldFontStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  fontFamily: "Rubik-Bold",
);

const kBoldItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.italic,
  fontFamily: "Rubik-Bold",
);

const kSemiBoldFontStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  fontFamily: "Rubik-SemiBold",
);

const kSemiBoldItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.italic,
  fontFamily: "Rubik-SemiBold",
);

const kMediumFontStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  fontFamily: "Rubik-Medium",
);

const kMediumItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.italic,
  fontFamily: "Rubik-Medium",
);

const kRegularFontStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  fontFamily: "Rubik-Regular",
);

const kRegularItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.italic,
  fontFamily: "Rubik-Regular",
);

const kLightFontStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.normal,
  fontFamily: "Roboto-Light",
);

const kLightItalicFontStyle = TextStyle(
  fontWeight: FontWeight.w300,
  fontStyle: FontStyle.italic,
  fontFamily: "Roboto-Light",
);



const kBigScreenHeight = 670;

// asset path
const kImagePath = 'assets/images';
const kSvgPath = 'assets/icons';


class Constant{
  static double kSize(double mediaQueryHeight, double onSmallScreen, double onBigScreen) {
    return mediaQueryHeight <= kBigScreenHeight ? onSmallScreen : onBigScreen;
  }

  static double getLineHeight(double figmaSize, double fontSize) => figmaSize/fontSize;

  static double getLetterSpacing(double figmaSize) => figmaSize/100;
}
