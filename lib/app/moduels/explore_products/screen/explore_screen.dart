import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery/app/animation/custom_delay_animation.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_images.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';
import 'package:grocery/app/moduels/explore_products/models/explore_model.dart';
import 'package:grocery/app/moduels/explore_products/screen/all_explore_items.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';
import 'package:grocery/app/routes/routes.dart';
import 'package:grocery/app/utils/utils.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool _showFirstWidget = true;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    final exploreController = Get.put(ExploreController());
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
          ? exploreWidget(exploreController)
          : Utils().searchWidget(controller),
    );
  }

  Container exploreWidget(ExploreController exploreController) {
    return Container(
      child: CustomScrollView(
        slivers: [
          //search section
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  left: getWidth(20), right: getWidth(20), top: getWidth(50)),
              child: InkWell(
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
                        borderRadius: BorderRadius.circular(getWidth(15))),
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
            ),
          ),
          //gridview section
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                childCount: exploreList.length,
                (context, index) => Padding(
                  padding: EdgeInsets.only(
                      left: getWidth(12),
                      right: getWidth(12),
                      bottom: getHeight(14)),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (_) => AllExploreScreen()));
                      Get.toNamed(Routes.allExploreScreen, arguments: {
                        "title": exploreList[index].title,
                        "productList": exploreList[index].productList
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: exploreController.clrList[index],
                        border: Border.all(
                            width: 2,
                            color: exploreController.bclrList[
                                index % exploreController.clrList.length]),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                              height: getHeight(100),
                              width: getWidth(100),
                              child: Image.asset(exploreList[index].imagePath)),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: getWidth(4)),
                            width: 93,
                            height: getWidth(44),
                            decoration: BoxDecoration(
                                // color: Colors.red,
                                borderRadius:
                                    BorderRadius.circular(getWidth(70))),
                            child: Center(
                              child: CustomText(
                                text: exploreList[index].title,
                                fontSize: getWidth(12),
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
