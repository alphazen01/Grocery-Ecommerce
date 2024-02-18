import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';

import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/social_screen/controller/social_controller.dart';

class SocialScreen extends GetView<SocialController> {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Background Image
          Container(
            width: screenWidth(),
            height: getHeight(374),
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.socialImage))),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(24.5)),
            child: Column(
              children: [
                CustomText(
                  text: "Get your groceries with nectar",
                  fontSize: getWidth(26),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColorBlack,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
