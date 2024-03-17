import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_images.dart';

class ExploreModel {
  final String imagePath;
  final String title;
  final List<AllExploreModel> productList;

  ExploreModel(
      {required this.imagePath,
      required this.title,
      required this.productList});
}

List<ExploreModel> exploreList = [
  ExploreModel(
      imagePath: AppImages.fruite,
      title: "Frash Fruits & Vegetable",
      productList: fruitsList),
  ExploreModel(
      imagePath: AppImages.oil,
      title: "Cooking Oil & Ghee",
      productList: oilList),
  ExploreModel(
      imagePath: AppImages.meat, title: "Meat & Fish", productList: meatList),
  ExploreModel(
      imagePath: AppImages.bakery,
      title: "Bakery & Snacks",
      productList: bakeryList),
  ExploreModel(
      imagePath: AppImages.dairy,
      title: "Dairy & Eggs",
      productList: dairyList),
  ExploreModel(
      imagePath: AppImages.bevarage,
      title: "Beverages",
      productList: beverageList),
];

class AllExploreModel {
  final String title;
  final String imagePath;
  final String subtitle;
  final String price;

  const AllExploreModel(
      {required this.title,
      required this.imagePath,
      required this.subtitle,
      required this.price});
}

const fruitsList = [
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Fruite",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
];
const oilList = [
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "oil",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
];
const meatList = [
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "meat",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
];
const bakeryList = [
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "bakery",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
];
const dairyList = [
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Dairy",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.apple,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
];
const beverageList = [
  AllExploreModel(
      imagePath: AppImages.d_coke,
      title: "Diet Coke",
      subtitle: "355 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.sprite,
      title: "Sprite Can",
      subtitle: "325 ml",
      price: "\$1.50"),
  AllExploreModel(
      imagePath: AppImages.grape,
      title: "Apple & Grape Juice",
      subtitle: "2L",
      price: "\$15.99"),
  AllExploreModel(
      imagePath: AppImages.orangeJuice,
      title: "Orenge Juice",
      subtitle: "2L",
      price: "\$15.99"),
  AllExploreModel(
      imagePath: AppImages.cocacola,
      title: "Coca Cola Can",
      subtitle: "325 ml",
      price: "\$1.99"),
  AllExploreModel(
      imagePath: AppImages.pepsi,
      title: "Pepsi Can ",
      subtitle: "330 ml",
      price: "\$1.99"),
];
