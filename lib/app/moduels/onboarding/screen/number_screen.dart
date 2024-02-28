import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/onboarding/controller/number_controller.dart';
import 'package:grocery/app/routes/routes.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberScreen extends GetView<NumberController> {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColors.appBackgroundColor,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      appBar: AppBar(
        leading: CustomDelayedAnimation(
          delay: 20,
          dx: 0,
          dy: -0.2,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: CustomImage(
              path: AppIcons.arrowLeft,
              color: AppColors.textColor4,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(65),
              ),
              CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: CustomText(
                  text: "Enter your mobile number",
                  fontSize: getWidth(26),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor4,
                ),
              ),
              SizedBox(
                height: getHeight(27.58),
              ),
              CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: CustomText(
                  text: "Mobile Number",
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor5,
                ),
              ),
              SizedBox(
                height: getHeight(10),
              ),
              //Number field
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
                            labelStyle: const TextStyle(color: Colors.black),
                            helperStyle: const TextStyle(color: Colors.black),
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
                                borderSide: BorderSide(color: AppColors.green)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            )),
                        initialCountryCode: controller.countryLetterCode.value,
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
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: getWidth(25), left: getWidth(25)),
        child: SizedBox(
          height: getWidth(67),
          width: getWidth(67),
          child: FloatingActionButton(
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.iconWhite,
            ),
            backgroundColor: AppColors.green,
            onPressed: () {
              Get.toNamed(Routes.verificaitonScreen);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
