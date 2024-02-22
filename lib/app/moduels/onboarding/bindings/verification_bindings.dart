import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/controller/verification_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }
}
