import 'package:get/get.dart';
import 'package:grocery/app/moduels/dashboard/controller/dashboard_controller.dart';

class DashBoardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());
  }
}
