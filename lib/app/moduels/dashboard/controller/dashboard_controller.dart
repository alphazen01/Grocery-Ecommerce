import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/moduels/home/screen/home_screen.dart';

class DashBoardController extends GetxController {
  var selectedIndex = 0.obs;

  final PageController pageController = PageController(initialPage: 0);

  // void onPageChange(int index) {
  //   _changePage(index);
  // }

  // void _changePage(int index) {
  //   int duration = 500;
  //   selectedIndex(index);

  //   pageController.animateToPage(
  //     selectedIndex.value,
  //     duration: Duration(milliseconds: duration),
  //     curve: Curves.ease,
  //   );
  // }

  List<Widget> pageList = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
