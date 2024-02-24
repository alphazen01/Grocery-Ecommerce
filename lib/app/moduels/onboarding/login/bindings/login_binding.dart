import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/login/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
