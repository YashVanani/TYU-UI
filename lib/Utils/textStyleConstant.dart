import 'package:flutter/material.dart';
import 'package:tyu/Utils/colorConstants.dart';

const NeueHaasDisplayBold = "NeueHaasDisplayBold";
const NeueHaasDisplayLight = "NeueHaasDisplayLight";
const NeueHaasDisplayMediu = "NeueHaasDisplayMediu";
const NeueHaasDisplayRoman = "NeueHaasDisplayRoman";

commanBoldTxt({double? fontSize, Color? color,FontWeight? fontWeight}) {
  return TextStyle(fontFamily: NeueHaasDisplayBold, fontSize: fontSize ?? 20, color: color ?? AppColors.whiteColor,fontWeight: fontWeight ?? FontWeight.normal);
}

commanRomanTxt({double? fontSize, Color? color,FontWeight? fontWeight}) {
  return TextStyle(fontFamily: NeueHaasDisplayRoman, fontSize: fontSize ?? 20, color: color ?? AppColors.whiteColor,fontWeight: fontWeight ?? FontWeight.normal);
}

commanMediTxt({double? fontSize, Color? color,FontWeight? fontWeight}) {
  return TextStyle(fontFamily: NeueHaasDisplayMediu, fontSize: fontSize ?? 20, color: color ?? AppColors.whiteColor,fontWeight: fontWeight ?? FontWeight.normal);
}


