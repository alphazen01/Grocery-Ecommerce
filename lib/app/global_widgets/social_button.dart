import 'package:flutter/material.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';

class CustomSocialButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;
  final double? borderWidth;
  final Color? textColor;
  final Color? splashColor;
  final Color buttonColor;
  final Gradient? gradientColor;

  const CustomSocialButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.imagePath,
      this.gradientColor,
      this.textColor,
      this.splashColor,
      required this.buttonColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return CustomDelayedAnimation(
      delay: 20,
      dx: 0,
      dy: -0.2,
      child: Container(
        height: getWidth(67),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(19)),

          // color: color
        ),
        child: Material(
          borderRadius: BorderRadius.circular(getWidth(19)),
          color: buttonColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(getWidth(19)),
            splashColor: splashColor ?? Colors.white24,
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(
                  path: imagePath,
                ),
                SizedBox(
                  width: getWidth(10),
                ),
                CustomText(
                  text: title,
                  fontSize: getWidth(18),
                  fontWeight: FontWeight.w700,
                  color: textColor ?? const Color(0xffFCFCFC),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
