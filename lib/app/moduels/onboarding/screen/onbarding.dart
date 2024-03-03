import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';

import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_button.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/onboarding/controller/onboarding_controller.dart';

import 'package:grocery/app/routes/routes.dart';

class OnbordingScreen extends GetView<SplashController> {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColors.mainColor,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: getWidth(30.5)),
        width: screenWidth(),
        height: screenHeight(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.onboardingImage),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDelayedAnimation(
              delay: 20,
              dx: 0,
              dy: -0.2,
              child: const CustomImage(
                path: AppIcons.carrot,
              ),
            ),
            SizedBox(
              height: getHeight(35.66),
            ),
            CustomDelayedAnimation(
              delay: 22,
              dx: 0,
              dy: -0.2,
              child: CustomText(
                text: "Welcome",
                fontSize: getWidth(48),
                fontWeight: FontWeight.w600,
                // color: AppColors.mainColor,
                fontHeight: getHeight(0.8),
              ),
            ),
            CustomDelayedAnimation(
              delay: 24,
              dx: 0,
              dy: -0.2,
              child: CustomText(
                text: "to our store",
                fontSize: getWidth(48),
                fontWeight: FontWeight.w600,
                // color: AppColors.mainColor,
              ),
            ),
            CustomDelayedAnimation(
              delay: 26,
              dx: 0,
              dy: -0.2,
              child: CustomText(
                text: "Ger your groceries in as fast as one hour",
                fontSize: getWidth(16),
                fontWeight: FontWeight.w600,
                color: AppColors.textColor2,
              ),
            ),
            SizedBox(
              height: getHeight(40.88),
            ),
            CustomDelayedAnimation(
              delay: 28,
              dx: 0,
              dy: -0.2,
              child: CustomSubmitButton(
                onTap: () {
                  Get.toNamed(Routes.socialScreen);
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => SplashScreen()));
                },
                title: "Get Started",
              ),
            )
          ],
        ),
      ),
    );
  }
}
