import 'package:flutter/material.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';

class CustomSubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? borderWidth;
  final Color? textColor;
  final Color? splashColor;
  final Gradient? gradientColor;

  const CustomSubmitButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.gradientColor,
      this.textColor,
      this.splashColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(19),
      ),
      child: Container(
        height: getWidth(67),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(19)),

          // color: color
        ),
        child: Material(
          borderRadius: BorderRadius.circular(getWidth(19)),
          color: AppColors.green,
          child: InkWell(
            borderRadius: BorderRadius.circular(getWidth(19)),
            splashColor: splashColor ?? Colors.white24,
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: title,
                  fontSize: getWidth(20),
                  fontWeight: FontWeight.w700,
                  color: textColor ?? const Color(0xffFAFAFA),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
