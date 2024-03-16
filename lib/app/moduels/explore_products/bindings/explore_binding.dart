import 'package:get/get.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';

class ExploreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreController());
  }
}
