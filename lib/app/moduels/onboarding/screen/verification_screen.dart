import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/onboarding/controller/verification_controller.dart';
import 'package:grocery/app/routes/routes.dart';
import 'package:pin_code_fields/pin_code_fields.dart' as pinT;
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationScreen extends GetView<VerificationController> {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
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
                  text: "Enter your 4-digit code",
                  fontSize: getWidth(26),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor4,
                ),
              ),
              SizedBox(
                height: getHeight(27.58),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomDelayedAnimation(
                      delay: 20,
                      dx: 0,
                      dy: -0.2,
                      child: CustomText(
                        text: "Code",
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor5,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(10),
              ),
              //Otp field
              pinT.PinCodeTextField(
                controller: controller.otpController,
                length: 4,
                obscureText: false,
                autoFocus: false,
                animationType: pinT.AnimationType.fade,
                pinTheme: pinT.PinTheme(
                  shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.circular(getWidth(20)),
                  fieldHeight: getWidth(55),
                  fieldWidth: getWidth(55),
                  selectedColor: AppColors.green,
                  selectedFillColor: AppColors.green,
                  inactiveColor: const Color(0xffE5E5E5),
                  inactiveFillColor: Colors.white,
                  activeFillColor: AppColors.white,
                  activeColor: const Color(0xffE5E5E5),
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                onCompleted: (v) {},
                showCursor: true,
                readOnly: false,
                textStyle: TextStyle(
                  color: AppColors.green,
                  fontSize: getWidth(32),
                  fontWeight: FontWeight.w800,
                ),
                onChanged: (value) {},
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(right: getWidth(25), left: getWidth(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getWidth(25)),
              child: CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: AppTextButton(
                  text: "Resend Code",
                  onTap: () {},
                  textColor: AppColors.green,
                  textSize: getWidth(18),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
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
                  Get.toNamed(Routes.locationScreen);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
