import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xFFea5c25);
Color kSecondaryColor = const Color(0xFFfea418);
// Color kBackgroundColor = const Color(0xFFfaf6ea);
Color kBackgroundColor = const Color(0xFFE5E5E5);
const kLogoBlur = Color(0xFF047bfb);

// ba6c5c
Color kDarkBackgroundColor = const Color(0xFFba6c5c);

TextStyle appTextStyle(
    FontWeight fontWeight, double fontSize, Color textColor) {
  return GoogleFonts.raleway(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
      // letterSpacing: 0.1,
    ),
  );
}

TextStyle appTextStyle2(
    {required FontWeight fontWeight,
    required double fontSize,
    required Color textColor}) {
  return TextStyle(
    fontFamily: 'SF-Pro-Text-Semibold',
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: textColor,
    letterSpacing: 0.1,
  );
}
