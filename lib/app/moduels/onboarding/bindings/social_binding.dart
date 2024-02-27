import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/controller/social_controller.dart';

class SocialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialController());
  }
}
