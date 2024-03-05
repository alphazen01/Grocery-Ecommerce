import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_images.dart';

class HomeController extends GetxController {
  var seachController = TextEditingController();

  var pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    pageController.dispose(); // dispose the PageController
  }

  var currentPage = 0.obs;
  var isFinished = false;

  @override
  void onInit() {
    super.onInit();

    // Listen to page changes and update the currentPage using GetX's obs
    pageController.addListener(() {
      currentPage.value = pageController.page?.round() ?? 0;
    });
  }

  List<String> bannerList = [
    AppImages.banner1,
    AppImages.banner2,
  ];
}
