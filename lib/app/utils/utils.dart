import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_textfield.dart';
import 'package:grocery/app/moduels/home/controller/home_controller.dart';
import 'package:grocery/app/moduels/products_details/screen/details_screen.dart';

class Utils {
  Container searchWidget(HomeController controller) {
    return Container(
      color: Colors.white10,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: getWidth(20), right: getWidth(20), top: getWidth(100)),
            child: Container(
              padding: EdgeInsets.only(left: getWidth(10)),
              height: getHeight(50),
              decoration: BoxDecoration(
                  color: AppColors.searchFieldColor,
                  borderRadius: BorderRadius.circular(getWidth(15))),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: CustomTextFormField(
                  autoFocus: true,
                  onChanged: (value) {
                    controller.filterSearchResults(value);
                  },
                  controller: controller.seachController,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search products",
                  borderColor: Colors.transparent,
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () {
                final filteredItems = controller.items;
                if (filteredItems.isEmpty) {
                  return ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(getWidth(15))),
                          height: getWidth(100),
                          width: getWidth(100),
                          child: Image.asset(
                            item.imagePath,
                          ),
                        ),
                        title: Text(item.productsName),
                        onTap: () {
                          // Set the selected item in the TextField
                          controller.seachController.text = item.productsName;
                          controller.seachController.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ProductsDetailsScreen(
                                productsModel: item,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else {
                  return ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(getWidth(15))),
                          height: getWidth(100),
                          width: getWidth(100),
                          child: Image.asset(
                            item.imagePath,
                          ),
                        ),
                        title: Text(item.productsName),
                        onTap: () {
                          // Set the selected item in the TextField
                          controller.seachController.text = item.productsName;
                          controller.seachController.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ProductsDetailsScreen(
                                productsModel: item,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
