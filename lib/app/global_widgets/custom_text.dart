import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? fontHeight;
  final Color? color;
  final Color? underlineColor;
  final double? letterSpaching;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  const CustomText(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.fontHeight,
      this.color,
      this.underlineColor,
      this.letterSpaching,
      this.textAlign,
      this.textDecoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: fontSize ?? getWidth(14),
          color: color ?? AppColors.mainColor,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontFamily: "Nunito-Bold",
          letterSpacing: letterSpaching,
          decoration: textDecoration,
          decorationThickness: 2,
          decorationColor: underlineColor,
          height: fontHeight),
    );
  }
}
