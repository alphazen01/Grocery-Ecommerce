import 'package:flutter/material.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/home/models/products_model.dart';

class CustomWidgetTwo extends StatelessWidget {
  const CustomWidgetTwo({
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
        padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: AppColors.green2),
        child: Row(
          children: [
            Container(
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
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(14), vertical: getHeight(10)),
              child: SizedBox(
                child: CustomText(
                  text: productsModel.productsName,
                  fontSize: getWidth(16),
                  color: AppColors.textColor4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
