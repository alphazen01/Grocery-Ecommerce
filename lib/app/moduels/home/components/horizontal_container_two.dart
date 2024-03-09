import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_items_widget.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/global_widgets/custom_widget_two.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';
import 'package:grocery/app/moduels/products_details/screen/details_screen.dart';

class HorizontalContainerTwo extends StatelessWidget {
  const HorizontalContainerTwo({
    Key? key,
    required this.title,
    required this.productList,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final List<ProductsModel> productList;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              fontSize: getWidth(24),
              color: AppColors.mainColor,
            ),
            AppTextButton(text: "See all", onTap: onTap),
          ],
        ),
        SizedBox(height: getHeight(30)),
        SizedBox(
          height: getWidth(150),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductsDetailsScreen(
                                productsModel: productList[index])));

                    print("object");
                  },
                  child: CustomWidgetTwo(productsModel: productList[index]));
            },
          ),
        ),
      ],
    );
  }
}
