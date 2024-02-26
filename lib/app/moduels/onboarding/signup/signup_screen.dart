import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/onboarding/signup/controller/signup_controller.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: getHeight(100),
            ),
            CustomDelayedAnimation(
              delay: 20,
              dx: 0,
              dy: -0.2,
              child: Expanded(
                child: Container(
                  width: getWidth(50),
                  height: getHeight(70),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.carrotLogo),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(80),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //text Section
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomText(
                        text: "Sign Up",
                        fontSize: getWidth(26),
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor4,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(15),
                  ),
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomText(
                        text: "Enter your credentials to continue",
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(40),
                  ),
                  //username section
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomText(
                        text: "Username",
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(10),
                  ),
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomTextFormField(
                        keboardType: TextInputType.name,
                        controller: controller.emailController,
                        hintText: "Type your valid email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(30),
                  ),
                  //email section
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomText(
                        text: "Email",
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(10),
                  ),
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomTextFormField(
                        keboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        hintText: "Type your valid email",
                      ),
                    ),
                  ),

                  SizedBox(
                    height: getHeight(30),
                  ),
                  //password section
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Expanded(
                      child: CustomText(
                        text: "Password",
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(10),
                  ),
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: Obx(() {
                      return Expanded(
                        child: CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "Type your password",
                          obSecure: controller.obscureText.value,
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.obscureText.value =
                                  !controller.obscureText.value;
                            },
                            icon: Icon(controller.obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  //terms and condition
                  // Container(
                  //   height: 80,

                  //   color: Colors.red,
                  //   child: Row(
                  //     children: [
                  //       CustomDelayedAnimation(
                  //         delay: 20,
                  //         dx: 0,
                  //         dy: -0.2,
                  //         child: CustomText(
                  //           text:
                  //               "By continuing you agree to our Terms of Service and Privacy Policy.",
                  //           fontSize: getWidth(14),
                  //           fontWeight: FontWeight.w400,
                  //           color: AppColors.textColor4,
                  //         ),
                  //       ),

                  //     ],
                  //   ),
                  // ),
                  RichText(
                    text: TextSpan(
                      text: 'By continuing you agree to our',
                      style: TextStyle(color: AppColors.textColor4),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Terms of Service',
                          style: TextStyle(
                              fontSize: getWidth(16),
                              color: AppColors.green,
                              height: 1),
                        ),
                        TextSpan(
                            text: ' and',
                            style: TextStyle(
                                color: AppColors.textColor4,
                                fontSize: getWidth(16))),
                        TextSpan(
                            text: ' Privacy Policy',
                            style: TextStyle(
                                color: AppColors.green,
                                fontSize: getWidth(16))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getHeight(30),
                  ),
                  //signup Button
                  CustomDelayedAnimation(
                      delay: 20,
                      dx: 0,
                      dy: -0.2,
                      child: Expanded(
                          child: CustomSubmitButton(
                              onTap: () {}, title: "Sing Up"))),
                  SizedBox(
                    height: getHeight(25),
                  ),

                  SizedBox(
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Already have an account?",
                            fontSize: getWidth(16),
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor4,
                          ),
                          SizedBox(
                            width: getWidth(5),
                          ),
                          AppTextButton(
                            text: "Login",
                            onTap: () {
                              Get.back();
                            },
                            textColor: AppColors.green,
                            textSize: getWidth(16),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
