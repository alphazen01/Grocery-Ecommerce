import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';

class HomeController extends GetxController {
  var seachController = TextEditingController();

  var pageController = PageController(initialPage: 0);
  final RxList<ProductsModel> items = RxList<ProductsModel>();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose(); // dispose the PageController
  }

  var currentPage = 0.obs;
  var isFinished = false;
  var isTap = false.obs;

  @override
  void onInit() {
    items
        .assignAll([...exclusiveItemsList, ...bestSellingList, ...groceryList]);
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
  void filterSearchResults(String query) {
    if (query.isEmpty) {
      items.assignAll(
          [...exclusiveItemsList, ...bestSellingList, ...groceryList]);
      return;
    }
    items.assignAll(items.where((item) {
      return item.productsName.toLowerCase().contains(query.toLowerCase());
    }).toList());
  }
}
