import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/moduels/onboarding/login/controller/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: getWidth(47.84),
            height: getHeight(55.64),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(AppImages.carrotLogo))),
          ),
          // Image.asset("assets/icons/carrot.png")
        ],
      ),
    );
  }
}
