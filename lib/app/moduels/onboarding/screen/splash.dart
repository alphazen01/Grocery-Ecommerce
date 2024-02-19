import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

//  Future<void> _loadResource()async{
//  await Get.find<PopularProductController>().getPopularProductList();
// await  Get.find<RecommendedProductController>().getRecommendedProductList();
// }

  @override
  void initState() {
    super.initState();
    // _loadResource();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    Timer(
        const Duration(seconds: 7), () => Get.offNamed(Routes.onboardingHome));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.splashImage),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
