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
      imagePath: AppImages.apple,
      title: "Frash Fruits & Vegetable",
      productList: fruitsList),
  ExploreModel(
      imagePath: AppImages.banana,
      title: "Cooking Oil & Ghee",
      productList: oilList),
  ExploreModel(
      imagePath: AppImages.pinapple,
      title: "Meat & Fish",
      productList: meatList),
  ExploreModel(
      imagePath: AppImages.begun,
      title: "Bakery & Snacks",
      productList: bakeryList),
  ExploreModel(
      imagePath: AppImages.capsicum,
      title: "Dairy & Eggs",
      productList: dairyList),
  ExploreModel(
      imagePath: AppImages.lichy,
      title: "Beverages",
      productList: beverageList),
];

class AllExploreModel {
  final String title;

  const AllExploreModel({required this.title});
}

const fruitsList = [
  AllExploreModel(title: "fruite 1"),
  AllExploreModel(title: "fruite 2"),
  AllExploreModel(title: "fruite 3"),
];
const oilList = [
  AllExploreModel(title: "oil 1"),
  AllExploreModel(title: "oil 2"),
  AllExploreModel(title: "oil 3"),
];
const meatList = [
  AllExploreModel(title: "meat 1"),
  AllExploreModel(title: "meat 2"),
  AllExploreModel(title: "meat 3"),
];
const bakeryList = [
  AllExploreModel(title: "bakery 1"),
  AllExploreModel(title: "bakery 2"),
  AllExploreModel(title: "bakery 3"),
];
const dairyList = [
  AllExploreModel(title: "dairy 1"),
  AllExploreModel(title: "dairy 2"),
  AllExploreModel(title: "dairy 3"),
];
const beverageList = [
  AllExploreModel(title: "beverage 1"),
  AllExploreModel(title: "beverage 2"),
  AllExploreModel(title: "beverage 3"),
];
