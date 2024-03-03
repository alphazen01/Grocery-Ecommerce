import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_button.dart';

import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/onboarding/controller/location_controller.dart';
import 'package:grocery/app/routes/routes.dart';

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
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Column(
            children: [
              //Image Section
              Expanded(
                child: CustomDelayedAnimation(
                  delay: 20,
                  dx: 0,
                  dy: -0.2,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(AppImages.locationImage),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(40.15),
              ),
              //Title Section
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
              //Sub title Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                child: CustomDelayedAnimation(
                  delay: 20,
                  dx: 0,
                  dy: -0.2,
                  child: CustomText(
                    text:
                        "Swithch on your location to stay in tune with what’s happening in your area",
                    textAlign: TextAlign.center,
                    fontSize: getWidth(16),
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor3,
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(90),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Textfiled Section And Button Section
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
                    CustomDelayedAnimation(
                      delay: 20,
                      dx: 0,
                      dy: -0.2,
                      child: CustomTextFormField(
                        controller: controller.locationNameController,
                        hintText: "Type your location",
                      ),
                    ),
                    SizedBox(
                      height: getHeight(40),
                    ),
                    CustomDelayedAnimation(
                      delay: 20,
                      dx: 0,
                      dy: -0.2,
                      child: CustomSubmitButton(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (_) => LoginScreen()));
                            Get.toNamed(Routes.loginScreen);
                          },
                          title: "Submit"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
