import 'package:get/get.dart';
import 'package:grocery/app/moduels/onboarding/controller/location_controller.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationController());
  }
}
