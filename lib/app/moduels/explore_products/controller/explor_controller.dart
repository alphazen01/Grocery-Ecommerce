import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  List<Color> clrList = [
    Color(0xff53B175).withOpacity(0.10),
    Color(0xffF8A44C).withOpacity(0.10),
    Color(0xffF7A593).withOpacity(0.25),
    Color(0xffD3B0E0).withOpacity(0.25),
    Color(0xffFDE598).withOpacity(0.25),
    Color(0xffB7DFF5).withOpacity(0.25),
  ];
  List<Color> bclrList = [
    Color(0xff53B175).withOpacity(0.75),
    Color(0xffF8A44C).withOpacity(0.75),
    Color(0xffF7A593).withOpacity(0.75),
    Color(0xffD3B0E0).withOpacity(0.75),
    Color(0xffFDE598).withOpacity(0.75),
    Color(0xffB7DFF5).withOpacity(0.75),
  ];
  RxInt currentIndex = 0.obs;

  // Add a method to update currentIndex if needed
  void updateCurrentIndex(int newIndex) {
    currentIndex.value = newIndex;
  }
}
