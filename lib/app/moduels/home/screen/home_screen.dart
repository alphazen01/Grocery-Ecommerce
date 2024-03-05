import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
            left: getWidth(20), right: getWidth(20), top: getWidth(40)),
        child: Column(
          children: [
            //Logo Section
            CustomDelayedAnimation(
              delay: 20,
              dx: 0,
              dy: -0.2,
              child: Container(
                width: getWidth(70),
                height: getHeight(70),
                child: Image.asset(
                  AppImages.carrotLogo,
                  height: getHeight(24),
                ),
              ),
            ),
            //Location Section
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
            SizedBox(
              height: getHeight(20),
            ),
            //search Section
            Container(
                padding: EdgeInsets.only(left: getWidth(10)),
                height: getHeight(50),
                decoration: BoxDecoration(
                    color: AppColors.searchFieldColor,
                    borderRadius: BorderRadius.circular(getWidth(15))),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: getHeight(5)),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff181B19),
                      ),
                    ),
                    SizedBox(
                      width: getWidth(5),
                    ),
                    CustomText(
                      text: "Search Store",
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor5,
                    )
                  ],
                )),
            SizedBox(
              height: getHeight(20),
            ),
            //Banner Section
            Container(
              height: getHeight(200),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getWidth(15))),
              child: PageView.builder(
                itemCount: controller.bannerList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: getWidth(10)),
                    decoration: BoxDecoration(
                      color: AppColors.searchFieldColor,
                      borderRadius: BorderRadius.circular(getWidth(15)),
                    ),
                    child: Image.asset(
                      controller.bannerList[index],
                      fit: BoxFit.fitWidth,
                    ),
                  );
                },
                onPageChanged: (int page) {
                  controller.currentPage.value = page;
                },
                allowImplicitScrolling: true,
              ),
            ),
            SizedBox(
              height: getHeight(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  controller.bannerList.length,
                  (indexDots) => Obx(() {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: getWidth(10)),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: controller.currentPage == indexDots
                                ? Colors.red
                                : Colors.green,
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
