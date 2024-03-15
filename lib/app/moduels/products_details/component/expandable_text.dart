import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_icons.dart';
import 'package:grocery/app/core/app_sizes.dart';
import 'package:grocery/app/global_widgets/custom_image.dart';
import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/products_details/controller/details_controller.dart';

class ExpandableText extends StatefulWidget {
  const ExpandableText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = 150; // Update this value as needed
  final controller = Get.put(ProductsDetaislController());

  @override
  void initState() {
    super.initState();
    if (widget.title.length > textHeight) {
      firstHalf = widget.title.substring(0, textHeight.toInt());
      secondHalf =
          widget.title.substring(textHeight.toInt() + 1, widget.title.length);
    } else {
      firstHalf = widget.title;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        secondHalf.isEmpty
            ? Text(
                firstHalf,
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Product Detail",
                        color: AppColors.textColor4,
                        fontWeight: FontWeight.w600,
                        fontSize: getWidth(16),
                      ),
                      IconButton(onPressed: () {
                        setState(() {
                          hiddenText = !hiddenText;
                        });
                        controller.hiddenText.value =
                            !controller.hiddenText.value;
                      }, icon: Obx(() {
                        return controller.hiddenText.value
                            ? Transform.rotate(
                                angle: pi / 2,
                                child: CustomImage(
                                  path: AppIcons.arrowLeft,
                                  height: 12,
                                ))
                            : CustomImage(path: AppIcons.arrowDown);
                      }))
                    ],
                  ),

                  SizedBox(height: 10),
                  Text(
                    hiddenText ? (firstHalf + "...") : (firstHalf + secondHalf),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  // Add some space between text and button
                ],
              ),
      ],
    );
  }
}
