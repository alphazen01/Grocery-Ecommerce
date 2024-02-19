import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/controller/number_controller.dart';

class NumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NumberController());
  }
}
