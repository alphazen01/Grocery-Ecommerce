import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';

import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/onboarding/controller/location_controller.dart';

class LocationScreen extends GetView<LocationController> {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: CustomImage(
            path: AppIcons.arrowLeft,
            color: AppColors.textColor4,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
          child: Column(
            children: [
              SizedBox(
                height: getHeight(45),
              ),
              //ImageSection
              CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: Container(
                  height: getHeight(170.69),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(AppImages.locationImage),
                  )),
                ),
              ),
              SizedBox(
                height: getHeight(40.15),
              ),
              //textSection
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: CustomText(
                      text: "Select Your Location",
                      fontSize: getWidth(26),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor4,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                child: CustomDelayedAnimation(
                  delay: 20,
                  dx: 0,
                  dy: -0.2,
                  child: CustomText(
                    text:
                        "Swithch on your location to stay in tune with what’s happening in your area",
                    fontSize: getWidth(16),
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor3,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(90),
              ),
              Column(
                children: [
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: CustomText(
                      text: "Your Zone",
                      fontSize: getWidth(16),
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor3,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(10),
                  ),
                  CustomTextFormField(
                    controller: controller.locationNameController,
                    hintText: "Select your area",
                    readOnly: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const CustomImage(
                        path: AppIcons.arrowDown,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
