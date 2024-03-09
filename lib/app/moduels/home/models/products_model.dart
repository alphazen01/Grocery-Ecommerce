import 'package:grocery/app/core/app_images.dart';

class ProductsModel {
  final String productsName;
  final String imagePath;
  final String quantity;
  final String price;

  ProductsModel({
    required this.imagePath,
    required this.productsName,
    required this.quantity,
    required this.price,
  });
}

List<ProductsModel> exclusiveItemsList = [
  ProductsModel(
    imagePath: AppImages.apple,
    productsName: "Red Apple",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.banana,
    productsName: "Banana",
    quantity: "1kg",
    price: "\$2.99",
  ),
  ProductsModel(
    imagePath: AppImages.mango,
    productsName: "Mango",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.orange,
    productsName: "Orange",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.pinapple,
    productsName: "Pinapple",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.lichy,
    productsName: "Lichy",
    quantity: "1kg",
    price: "\$7.00",
  ),
];
List<ProductsModel> bestSellingList = [
  ProductsModel(
    imagePath: AppImages.capsicum,
    productsName: "Capsicum",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.begun,
    productsName: "Bringal",
    quantity: "1kg",
    price: "\$2.99",
  ),
  ProductsModel(
    imagePath: AppImages.carrots,
    productsName: "Carrot",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.morich,
    productsName: "Red Chili",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.pinapple,
    productsName: "Pinapple",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.lichy,
    productsName: "Lichy",
    quantity: "1kg",
    price: "\$7.00",
  ),
];

List<ProductsModel> groceryList = [
  ProductsModel(
    imagePath: AppImages.capsicum,
    productsName: "Capsicum",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.begun,
    productsName: "Bringal",
    quantity: "1kg",
    price: "\$2.99",
  ),
  ProductsModel(
    imagePath: AppImages.carrots,
    productsName: "Carrot",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.morich,
    productsName: "Red Chili",
    quantity: "1kg",
    price: "\$4.99",
  ),
  ProductsModel(
    imagePath: AppImages.pinapple,
    productsName: "Pinapple",
    quantity: "1kg",
    price: "\$5.99",
  ),
  ProductsModel(
    imagePath: AppImages.lichy,
    productsName: "Lichy",
    quantity: "1kg",
    price: "\$7.00",
  ),
];
