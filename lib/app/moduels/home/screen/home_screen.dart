import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_items_widget.dart';
import 'package:grocery/app/global_widgets/custom_submit_button.dart';
import 'package:grocery/app/global_widgets/custom_icon_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/home/components/horizontal_container.dart';
import 'package:grocery/app/moduels/home/components/horizontal_container_two.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';
import 'package:grocery/app/moduels/products_details/screen/details_screen.dart';
import 'package:grocery/app/routes/routes.dart';
import 'package:grocery/app/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showFirstWidget = true;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return WillPopScope(
      onWillPop: () async {
        if (!_showFirstWidget) {
          setState(() {
            _showFirstWidget = true;
          });
          return false;
        }
        return true;
      },
      child: _showFirstWidget
          ? homeWidget(controller)
          : Utils().searchWidget(controller),
    );
  }

  Container homeWidget(HomeController controller) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getWidth(20),
                        right: getWidth(20),
                        top: getWidth(40)),
                    child: Column(
                      children: [
                        //Logo Section
                        Container(
                          width: getWidth(70),
                          height: getHeight(70),
                          child: Image.asset(
                            AppImages.carrotLogo,
                            height: getHeight(24),
                          ),
                        ),
                        //Location Section
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(
                              width: getWidth(5),
                            ),
                            CustomText(
                              text: "Dhaka, Banassre",
                              fontSize: getWidth(18),
                              fontWeight: FontWeight.w600,
                              color: AppColors.textColor6,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: getHeight(20),
                        ),
                        //search Section
                        InkWell(
                          onTap: () {
                            setState(() {
                              _showFirstWidget = !_showFirstWidget;
                            });
                          },
                          child: Container(
                              padding: EdgeInsets.only(left: getWidth(10)),
                              height: getHeight(50),
                              decoration: BoxDecoration(
                                  color: AppColors.searchFieldColor,
                                  borderRadius:
                                      BorderRadius.circular(getWidth(15))),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: getHeight(5)),
                                    child: Icon(
                                      Icons.search,
                                      color: Color(0xff181B19),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getWidth(5),
                                  ),
                                  CustomText(
                                    text: "Search products",
                                    fontSize: getWidth(14),
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.textColor5,
                                  )
                                ],
                              )),
                        ),

                        SizedBox(
                          height: getHeight(20),
                        ),
                        //Banner Section
                        Container(
                          height: getHeight(200),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(getWidth(15))),
                          child: PageView.builder(
                            itemCount: controller.bannerList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(left: getWidth(10)),
                                decoration: BoxDecoration(
                                  color: AppColors.searchFieldColor,
                                  borderRadius:
                                      BorderRadius.circular(getWidth(15)),
                                ),
                                child: Image.asset(
                                  controller.bannerList[index],
                                  fit: BoxFit.fitWidth,
                                ),
                              );
                            },
                            onPageChanged: (int page) {
                              controller.currentPage.value = page;
                            },
                            allowImplicitScrolling: true,
                          ),
                        ),
                        SizedBox(
                          height: getHeight(20),
                        ),
                        //Indicator Section
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              controller.bannerList.length,
                              (indexDots) => Obx(() {
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getWidth(5)),
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor:
                                            controller.currentPage == indexDots
                                                ? AppColors.green
                                                : AppColors.white,
                                      ),
                                    );
                                  })),
                        ),
                        SizedBox(
                          height: getHeight(30),
                        ),
                        //Exclusive offer section
                        HorizontalContainer(
                          title: "Exclusive Offer ",
                          onTap: () {
                            Get.toNamed(Routes.seeAllProducts, arguments: {
                              "title": "Exclusive Offer",
                              "products": exclusiveItemsList,
                            });
                          },
                          productList: exclusiveItemsList,
                        ),

                        SizedBox(
                          height: getHeight(30),
                        ),
                        HorizontalContainer(
                          title: "Best Selling ",
                          onTap: () {
                            Get.toNamed(Routes.seeAllProducts, arguments: {
                              "title": "Best Selling",
                              "products": bestSellingList,
                            });
                          },
                          productList: bestSellingList,
                        ),
                        SizedBox(
                          height: getHeight(30),
                        ),
                        HorizontalContainerTwo(
                          title: "Groceries ",
                          onTap: () {
                            Get.toNamed(Routes.seeAllProducts, arguments: {
                              "title": "Groceries",
                              "products": groceryList,
                            });
                          },
                          productList: groceryList,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
