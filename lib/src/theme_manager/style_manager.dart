import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarang_app/src/theme_manager/color_manager.dart';
import 'package:sarang_app/src/theme_manager/font_manager.dart';

TextStyle _getTextStyle({
  required double fontSize,
  required String fontFamily,
  required FontWeight fontWeight,
  required Color color,
}) {
  return GoogleFonts.poppins().copyWith(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getWhiteTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: FontFamilyConstant.fontFamily,
    fontWeight: fontWeight,
    color: ColorManager.white,
  );
}

TextStyle getBlack60TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: FontFamilyConstant.fontFamily,
    fontWeight: fontWeight,
    color: ColorManager.black60,
  );
}

TextStyle getBlack30TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: FontFamilyConstant.fontFamily,
    fontWeight: fontWeight,
    color: ColorManager.black30,
  );
}

TextStyle getBlackTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: FontFamilyConstant.fontFamily,
    fontWeight: fontWeight,
    color: ColorManager.black,
  );
}

TextStyle getGrey60TextStyle({
  double fontSize = FontSizeManager.f14,
  FontWeight fontWeight = FontWeightManager.regular,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontFamily: FontFamilyConstant.fontFamily,
    fontWeight: fontWeight,
    color: ColorManager.grey60,
  );
}
