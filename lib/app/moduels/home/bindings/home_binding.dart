import 'package:get/get.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';

class DashBoardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
