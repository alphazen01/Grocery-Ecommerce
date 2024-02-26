import 'package:get/get.dart';

import 'package:grocery/app/moduels/onboarding/signup/controller/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
