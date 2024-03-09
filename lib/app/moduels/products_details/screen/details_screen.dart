import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';
import 'package:grocery/app/moduels/products_details/controller/details_controller.dart';

class ProductsDetailsScreen extends GetView<ProductsDetaislController> {
  const ProductsDetailsScreen({
    Key? key,
    required this.productsModel,
  }) : super(key: key);

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //Image section
              SafeArea(
                child: Container(
                  width: double.infinity,
                  height: screenHeight() * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(getWidth(25)),
                        bottomRight: Radius.circular(getWidth(25)),
                      )),
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          productsModel.imagePath,
                        ),
                      ),
                      Positioned(
                        left: getWidth(25),
                        top: getHeight(8),
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back_ios_new)),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Prducts Name section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: getHeight(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: productsModel.productsName,
                                fontSize: getWidth(24),
                                color: AppColors.textColor4,
                              ),
                              CustomText(
                                text: productsModel.quantity,
                                fontSize: getWidth(16),
                                color: AppColors.textColor5,
                              )
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
