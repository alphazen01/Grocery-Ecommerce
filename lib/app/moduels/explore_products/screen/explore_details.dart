import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_submit_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';
import 'package:grocery/app/moduels/explore_products/models/explore_model.dart';
import 'package:grocery/app/moduels/products_details/component/expandable_text.dart';

class ExploreDetails extends GetView<ExploreController> {
  const ExploreDetails({super.key, required this.allExploreModel});
  final AllExploreModel allExploreModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 1,
          backgroundColor: AppColors.detailsImageBg,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new)),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              //Image section
              Container(
                // width: double.infinity,
                // height: screenHeight() * 0.25,
                decoration: BoxDecoration(
                    color: AppColors.detailsImageBg,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(getWidth(25)),
                      bottomRight: Radius.circular(getWidth(25)),
                    )),
                child: Center(
                  child: Image.asset(
                    allExploreModel.imagePath,
                  ),
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
                                  text: allExploreModel.title,
                                  fontSize: getWidth(24),
                                  color: AppColors.textColor4,
                                ),
                                CustomText(
                                  text: allExploreModel.subtitle,
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
                            text: allExploreModel.price,
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

                      ExpandableText(
                        title:
                            "Nutrition is the biochemical and physiological process by which an organism uses food to support its life. It provides organisms with nutrients, which can be metabolized to create energy and chemical structures.",
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Divider(
                        color: AppColors.dividerColor,
                      ),
                      //nutritions
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Nutritions",
                            color: AppColors.textColor4,
                            fontWeight: FontWeight.w600,
                            fontSize: getWidth(16),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHeight(5),
                                vertical: getHeight(5)),
                            decoration: BoxDecoration(
                                color: Color(0xffEBEBEB),
                                borderRadius:
                                    BorderRadius.circular(getWidth(5))),
                            child: Center(
                              child: CustomText(
                                text: "100gm",
                                fontSize: getWidth(9),
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor4,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      Divider(
                        color: AppColors.dividerColor,
                      ),
                      //Review
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Review",
                            color: AppColors.textColor4,
                            fontWeight: FontWeight.w600,
                            fontSize: getWidth(16),
                          ),
                          Row(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                      Icons.star,
                                      color: Colors.deepOrangeAccent,
                                    )),
                          ),
                        ],
                      ),

                      //Button section
                      SafeArea(
                        child: CustomSubmitButton(
                          onTap: () {},
                          title: "Add To Basket",
                          textColor: AppColors.white,
                        ),
                      )
                    ]),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
