import 'package:get/get.dart';

class ProductsDetaislController extends GetxController {
  var count = 0.obs;
  var selectFav = false.obs;

  void increament() {
    count.value++;
  }

  void decreament() {
    if (count.value > 0) {
      count.value--;
    }
  }
}
