import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData = 0 as MediaQueryData;
  static double screenWidth = 375.0;
  static double screenHeight = 812.0;
  static double defaultHeight = 0;
  static Orientation orientation = 0 as Orientation;

  void init (BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height of the screen
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // Designers use 812 as the layout height
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate width of the screen
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // Designers use 375 as the layout width 
  return (inputWidth / 375.0) * screenWidth;
}