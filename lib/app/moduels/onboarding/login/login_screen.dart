import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_submit_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/onboarding/login/controller/login_controller.dart';
import 'package:grocery/app/routes/routes.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: CustomDelayedAnimation(
            delay: 20,
            dx: 0,
            dy: -0.2,
            child: Container(
              width: getWidth(70),
              height: getHeight(70),
              child: Image.asset(
                AppImages.carrotLogo,
                scale: 0.5,
              ),
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
                child: CustomText(
                  text: "Login",
                  fontSize: getWidth(26),
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor4,
                ),
              ),
              SizedBox(
                height: getHeight(15),
              ),
              CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: CustomText(
                  text: "Enter your emails and password",
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor5,
                ),
              ),
              SizedBox(
                height: getHeight(40),
              ),
              //email section
              CustomDelayedAnimation(
                delay: 20,
                dx: 0,
                dy: -0.2,
                child: CustomText(
                  text: "Email",
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
                  keboardType: TextInputType.emailAddress,
                  controller: controller.emailController,
                  hintText: "Type your valid email",
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
                child: CustomText(
                  text: "Password",
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
                child: Obx(() {
                  return CustomTextFormField(
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
                  );
                }),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomDelayedAnimation(
                    delay: 20,
                    dx: 0,
                    dy: -0.2,
                    child: CustomText(
                      text: "Forgot Password?",
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor4,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getHeight(30),
              ),
              //Login Button
              CustomDelayedAnimation(
                  delay: 20,
                  dx: 0,
                  dy: -0.2,
                  child: CustomSubmitButton(
                      onTap: () {
                        Get.offAndToNamed(Routes.dashBoard);
                      },
                      title: "Log In")),
              SizedBox(
                height: getHeight(25),
              ),

              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Don’t have an account?",
                      fontSize: getWidth(16),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor4,
                    ),
                    SizedBox(
                      width: getWidth(5),
                    ),
                    AppTextButton(
                      text: "Signup",
                      onTap: () {
                        Get.toNamed(Routes.signupScreen);
                      },
                      textColor: AppColors.green,
                      textSize: getWidth(16),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
