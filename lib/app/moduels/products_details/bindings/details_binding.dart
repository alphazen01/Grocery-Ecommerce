import 'package:get/get.dart';

class ProductsDetaislBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsDetaislBindings());
  }
}
