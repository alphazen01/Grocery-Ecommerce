import 'package:flutter/material.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Logo Section
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              SizedBox(
                width: getWidth(5),
              ),
              CustomText(
                text: "Dhaka, Banassre",
                fontSize: getWidth(18),
                fontWeight: FontWeight.w600,
                color: AppColors.textColor6,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
