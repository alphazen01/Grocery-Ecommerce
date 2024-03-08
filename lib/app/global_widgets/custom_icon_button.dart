import 'package:flutter/material.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';

class CustomIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback onTap;
  final double? borderWidth;
  final Color? textColor;
  final Color? splashColor;
  final Gradient? gradientColor;

  const CustomIconButton(
      {super.key,
      required this.onTap,
      this.icon,
      this.gradientColor,
      this.textColor,
      this.splashColor,
      this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
      child: Container(
        height: getWidth(45),
        width: getWidth(45),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getWidth(17)),

          // color: color
        ),
        child: Material(
          borderRadius: BorderRadius.circular(getWidth(17)),
          color: AppColors.green,
          child: InkWell(
            borderRadius: BorderRadius.circular(getWidth(17)),
            splashColor: splashColor ?? Colors.white24,
            onTap: onTap,
            child: Icon(
              icon ?? Icons.add,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
