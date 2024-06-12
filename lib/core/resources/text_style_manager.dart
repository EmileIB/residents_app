import 'package:flutter/material.dart'; 
import 'font_manager.dart'; 

TextStyle _getTextStyle({
  required double fontSize,
  required String fontFamily,
  double? height,
  Color? color,
}) =>
    TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: fontSize,
      overflow: TextOverflow.fade,
      height: height,
    );

TextStyle? appFontStyle({
  required double fontSize,
  required Color color,
  required String fontFamily,
}) =>
    _getTextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      color: color,
    );

TextStyle? buttonText({
  required Color color,
  double fontSize = FontSizesManager.s16,
  FontWeight fontWeight = FontWeightManager.semiBold,
}) =>
    _getTextStyle(
      fontFamily: FontFamilyManager.interMedium,
      fontSize: fontSize,
      color: color,
    );
