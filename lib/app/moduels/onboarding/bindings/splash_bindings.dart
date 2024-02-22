import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/controller/onboarding_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}