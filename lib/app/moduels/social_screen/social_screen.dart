import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';

import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/social_button.dart';
import 'package:grocery/app/moduels/social_screen/controller/social_controller.dart';
import 'package:grocery/app/routes/routes.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SocialScreen extends GetView<SocialController> {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Background Image
            CustomDelayedAnimation(
              delay: 20,
              dx: 0,
              dy: -0.2,
              child: Container(
                width: screenWidth(),
                height: getHeight(374),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppImages.socialImage),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: getHeight(50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(24.5)),
              child: Column(
                children: [
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: CustomText(
                      text: "Get your groceries with nectar",
                      fontSize: getWidth(26),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColorBlack,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(30.6),
                  ),
                  //Number Inputfield
                  Obx(() => controller.countryLetterCode.value == ""
                      ? const SizedBox()
                      : CustomDelayedAnimation(
                          delay: 20,
                          dx: 0,
                          dy: -0.2,
                          child: IntlPhoneField(
                            controller: controller.phoneController,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 16),
                                fillColor: AppColors.textfieldFilColor,
                                filled: true,
                                // labelText: 'Mobile',
                                // hintText: "mobile_number".tr,
                                labelStyle:
                                    const TextStyle(color: Colors.black),
                                helperStyle:
                                    const TextStyle(color: Colors.black),
                                // focusedBorder: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(6),
                                //     borderSide: const BorderSide(
                                //         color: Colors.black)
                                // ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide:
                                        const BorderSide(color: Colors.red)),
                                // border: GradientOutlineInputBorder(
                                //   gradient: buttonTextFieldRadialGradient,
                                //   borderRadius: BorderRadius.circular(20),
                                // ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: AppColors.green)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                )),
                            initialCountryCode:
                                controller.countryLetterCode.value,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (value) {
                              if (value == null || value.number.isEmpty) {
                                return 'Enter Phone Number';
                              }
                              return null;
                            },
                            onCountryChanged: (country) {
                              controller.changeCountryCode(
                                  country.code, "+${country.dialCode}");
                            },
                            onChanged: (phone) {
                              controller.changeCountryCode(
                                  phone.countryISOCode, phone.countryCode);
                            },
                          ),
                        )),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: CustomText(
                      text: "Or connect with social media",
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor3,
                    ),
                  ),
                  SizedBox(
                    height: getHeight(37.8),
                  ),
                  CustomSocialButton(
                    onTap: () {
                      Get.toNamed(Routes.numberScreen);
                    },
                    title: 'Continue with Google',
                    imagePath: AppIcons.googleIcon,
                    buttonColor: AppColors.blue3rd,
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  CustomSocialButton(
                    onTap: () {},
                    title: 'Continue with Facebook',
                    imagePath: AppIcons.facebookIcon,
                    buttonColor: AppColors.blue4th,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
