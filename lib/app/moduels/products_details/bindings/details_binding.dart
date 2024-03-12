import 'package:get/get.dart';
import 'package:grocery/app/moduels/products_details/controller/details_controller.dart';

class ProductsDetaislBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsDetaislController());
  }
}
