import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_icon_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';
import 'package:grocery/app/moduels/explore_products/models/explore_model.dart';
import 'package:grocery/app/moduels/explore_products/screen/explore_details.dart';
import 'package:grocery/app/moduels/products_details/screen/details_screen.dart';

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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
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
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ExploreDetails(
                                  allExploreModel: productList[index])));
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        width: getWidth(170),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.green2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: getWidth(10)),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(getWidth(15))),
                              height: getWidth(100),
                              width: getWidth(100),
                              child: Image.asset(
                                productList[index].imagePath,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getWidth(14),
                                  right: getWidth(14),
                                  bottom: getWidth(10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: productList[index].title,
                                        fontSize: getWidth(16),
                                        color: AppColors.textColor4,
                                      ),
                                      CustomText(
                                        text: productList[index].subtitle,
                                        fontSize: getWidth(14),
                                        color: AppColors.textColor5,
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: productList[index].price,
                                        fontSize: getWidth(18),
                                        color: AppColors.textColor4,
                                      ),
                                      CustomIconButton(onTap: () {})
                                    ],
                                  )
                                ],
                              ),
                            )
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
                    mainAxisExtent: 250),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
