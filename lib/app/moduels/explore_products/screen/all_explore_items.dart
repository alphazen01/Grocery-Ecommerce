import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';
import 'package:grocery/app/moduels/explore_products/models/explore_model.dart';

class AllExploreScreen extends GetView<ExploreController> {
  const AllExploreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String title = arguments["title"] ?? "Title";
    final List<AllExploreModel> productList = arguments["productList"];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomText(
              text: title,
              fontSize: getWidth(20),
            ),
          ),
          //gridview section
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: productList.length, (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: getWidth(12),
                      right: getWidth(12),
                      bottom: getHeight(14)),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.green2,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: getHeight(100),
                            width: getWidth(100),
                            color: Colors.red,
                          ),
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
                                text: productList[index].title,
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
                );
              }),
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
