import 'package:get/get.dart';
import 'package:grocery/app/moduels/social_screen/controller/social_controller.dart';

class SocialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialController());
  }
}
