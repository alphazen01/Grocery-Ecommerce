import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool? obSecure;
  final bool? readOnly;
  const CustomTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    this.suffixIcon,
    this.obSecure,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(60),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.texfieldBorder))),
      child: TextFormField(
        controller: controller,
        obscureText: obSecure ?? false,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: getWidth(14),
              color: AppColors.textColor3,
            ),
            suffixIcon: suffixIcon,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
