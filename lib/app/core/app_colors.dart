import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor appColor = MaterialColor(
    0xff0A0A0A,
    <int, Color>{
      900: AppColors.mainColor800,
      800: AppColors.mainColor800,
      700: AppColors.mainColor700,
      600: AppColors.mainColor600,
      500: AppColors.mainColor500,
      400: AppColors.mainColor400,
      300: AppColors.mainColor300,
      200: AppColors.mainColor200,
      100: AppColors.mainColor100,
      50: AppColors.mainColor50,
    },
  );

  static Color pageBackground = const Color(0xFFf9fbfd);
  static Color mainColor = const Color(0xff0A0A0A);
  static Color mainColor900 = const Color(0xff212121);
  static Color mainColor800 = const Color(0xff424242);
  static Color mainColor700 = const Color(0xff616161);
  static Color mainColor600 = const Color(0xff757575);
  static Color mainColor500 = const Color(0xff9E9E9E);
  static Color mainColor400 = const Color(0xffBDBDBD);
  static Color mainColor300 = const Color(0xffE0E0E0);
  static Color mainColor200 = const Color(0xffEEEEEE);
  static Color mainColor100 = const Color(0xffF5F5F5);
  static Color mainColor50 = const Color(0xffFAFAFA);
  static Color greyColor = const Color(0xff989eb1);
  static Color deppBlue = const Color(0xff034AFF);
  static Color red = const Color(0xFFF23423);
  static Color green = const Color(0xFF53B175);
  static Color orange = Colors.orangeAccent;
  static Color boldTextColor = const Color(0xff102048);
  static Color white = Colors.white;
  static Color blue2nd = const Color(0xff034AFF);
  static Color deepGreyColor = const Color(0xFF7282A0);
  static Color themeColor = const Color(0xff2A9C73);
  static Color themeColor1 = const Color(0xff219E55);
  static Color themeColor2 = const Color(0xff319A8D);
  static Color textColor = const Color(0xff35424a);
  static Color textColor2 = const Color(0xffFCFCFC).withOpacity(0.7);
  static Color linearProgressBackColor = const Color(0xffCED3DE);
  static Color installmentBackgroundColor = const Color(0xffF0F5FF);
  static Color barrierColor = const Color(0xffC4C4C4).withOpacity(0.12);
}
