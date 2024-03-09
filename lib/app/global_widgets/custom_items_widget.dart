import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/app_text_button.dart';
import 'package:grocery/app/global_widgets/custom_icon_button.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';

class CustomItemsWidzet extends StatelessWidget {
  const CustomItemsWidzet({
    super.key,
    required this.productsModel,
  });
  final ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: getWidth(170),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: AppColors.green2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: getWidth(10)),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(getWidth(15))),
              height: getWidth(100),
              width: getWidth(100),
              child: Image.asset(
                productsModel.imagePath,
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
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: productsModel.productsName,
                          fontSize: getWidth(16),
                          color: AppColors.textColor4,
                        ),
                        CustomText(
                          text: productsModel.quantity,
                          fontSize: getWidth(14),
                          color: AppColors.textColor5,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: productsModel.price,
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
    );
  }
}
