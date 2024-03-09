import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_items_widget.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';
import 'package:grocery/app/moduels/products_details/screen/details_screen.dart';
import 'package:grocery/app/routes/routes.dart';

class SeeAllProducts extends GetView<HomeController> {
  const SeeAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments = Get.arguments;
    final String title = arguments['title'] ?? "ViewAllProducts";

    final List<ProductsModel> productsModel =
        arguments["products"] ?? "nothing";
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 100,
            title: CustomText(
              text: title,
              fontSize: getWidth(18),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 260,
                maxCrossAxisExtent: 198.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductsDetailsScreen(
                                    productsModel: productsModel[index])));
                      },
                      child: CustomItemsWidzet(
                          productsModel: productsModel[index]));
                },
                childCount: productsModel.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
