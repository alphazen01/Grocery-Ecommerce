import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';

import 'package:grocery/app/moduels/dashboard/controller/dashboard_controller.dart';

class DashBoardScreen extends GetView<DashBoardController> {
  const DashBoardScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.selectedIndex.value,
            backgroundColor: Colors.white,
            // selectedItemColor: Colors.green,
            // unselectedItemColor: Colors.red,
            selectedLabelStyle: TextStyle(color: Colors.green),
            onTap: (int index) {
              controller.selectedIndex.value = index;
            },
            items: [
          BottomNavigationBarItem(
            icon: Obx(() {
              return Column(
                children: [
                  CustomImage(
                    path: AppIcons.store,
                    color: controller.selectedIndex.value == 0
                        ? AppColors.green
                        : AppColors.mainColor,
                    height: getWidth(28),
                    width: getWidth(28),
                  ),
                  CustomText(
                    text: "Shop",
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w600,
                    color: controller.selectedIndex.value == 0
                        ? AppColors.green
                        : AppColors.mainColor,
                  )
                ],
              );
            }),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Obx(() {
              return Column(
                children: [
                  CustomImage(
                    path: AppIcons.explore,
                    color: controller.selectedIndex.value == 1
                        ? AppColors.green
                        : AppColors.mainColor,
                    height: getWidth(28),
                    width: getWidth(28),
                  ),
                  CustomText(
                    text: "Explore",
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w600,
                    color: controller.selectedIndex.value == 1
                        ? AppColors.green
                        : AppColors.mainColor,
                  )
                ],
              );
            }),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Obx(() {
              return Column(
                children: [
                  CustomImage(
                    path: AppIcons.cart,
                    color: controller.selectedIndex.value == 2
                        ? AppColors.green
                        : AppColors.mainColor,
                    height: getWidth(28),
                    width: getWidth(28),
                  ),
                  CustomText(
                    text: "Cart",
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w600,
                    color: controller.selectedIndex.value == 2
                        ? AppColors.green
                        : AppColors.mainColor,
                  )
                ],
              );
            }),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Obx(() {
              return Column(
                children: [
                  CustomImage(
                    path: AppIcons.heart,
                    color: controller.selectedIndex.value == 3
                        ? AppColors.green
                        : AppColors.mainColor,
                    height: getWidth(28),
                    width: getWidth(28),
                  ),
                  CustomText(
                    text: "Favourite",
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w600,
                    color: controller.selectedIndex.value == 3
                        ? AppColors.green
                        : AppColors.mainColor,
                  )
                ],
              );
            }),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Obx(() {
              return Column(
                children: [
                  CustomImage(
                    path: AppIcons.account,
                    color: controller.selectedIndex.value == 4
                        ? AppColors.green
                        : AppColors.mainColor,
                    height: getWidth(28),
                    width: getWidth(28),
                  ),
                  CustomText(
                    text: "Account",
                    fontSize: getWidth(12),
                    fontWeight: FontWeight.w600,
                    color: controller.selectedIndex.value == 4
                        ? AppColors.green
                        : AppColors.mainColor,
                  )
                ],
              );
            }),
            label: 'Account',
          ),
        ]));
  }
}
