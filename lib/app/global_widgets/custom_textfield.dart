import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final bool? obSecure;
  final bool? readOnly;
  final TextInputType? keboardType;
  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.obSecure,
      this.readOnly,
      this.keboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getHeight(60),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.texfieldBorder))),
      child: TextFormField(
        keyboardType: keboardType,
        controller: controller,
        obscureText: obSecure ?? false,
        readOnly: readOnly ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: getWidth(14),
              color: AppColors.textColor3,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}
