import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
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
    final controller = Get.put(ProductsDetaislController());
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              //Image section
              Container(
                width: double.infinity,
                height: screenHeight() * 0.4,
                decoration: BoxDecoration(
                    color: AppColors.detailsImageBg,
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

              //content section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Prducts Name section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          Obx(() {
                            return IconButton(
                                onPressed: () {
                                  controller.selectFav.value =
                                      !controller.selectFav.value;
                                },
                                icon: Icon(controller.selectFav.value
                                    ? Icons.favorite_border_outlined
                                    : Icons.favorite));
                          })
                        ],
                      ),
                      SizedBox(
                        height: getHeight(30),
                      ),
                      //increament and decremeant section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      controller.decreament();
                                    },
                                    icon: Icon(Icons.remove)),
                                Container(
                                  height: getWidth(45),
                                  width: getWidth(45),
                                  decoration: BoxDecoration(
                                      color: AppColors.texfieldBorder,
                                      borderRadius:
                                          BorderRadius.circular(getWidth(17))),
                                  child: Center(
                                    child: Obx(() {
                                      return CustomText(
                                        text: controller.count.value.toString(),
                                        color: AppColors.textColor4,
                                        fontWeight: FontWeight.w600,
                                        fontSize: getWidth(18),
                                      );
                                    }),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      controller.increament();
                                    },
                                    icon: Icon(Icons.add)),
                              ],
                            ),
                          ),
                          //price section
                          CustomText(
                            text: "\$4.99",
                            color: AppColors.textColor4,
                            fontWeight: FontWeight.w600,
                            fontSize: getWidth(24),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: getHeight(30),
                      ),
                      //divider section
                      Divider(
                        color: AppColors.dividerColor,
                      ),
                      SizedBox(
                        height: getHeight(18),
                      ),
                      //products details
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Product Detail",
                            color: AppColors.textColor4,
                            fontWeight: FontWeight.w600,
                            fontSize: getWidth(16),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: CustomImage(path: AppIcons.arrowDown))
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
