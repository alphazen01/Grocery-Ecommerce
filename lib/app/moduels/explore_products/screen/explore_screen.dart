import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/app_colors.dart';
import 'package:grocery/app/core/app_sizes.dart';

import 'package:grocery/app/global_widgets/custom_text.dart';
import 'package:grocery/app/moduels/explore_products/controller/explor_controller.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late final ExploreController controller;
  bool _showFirstWidget = true;

  @override
  void initState() {
    super.initState();
    controller = Get.put(ExploreController());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: CustomText(
              text: "Find Products",
              fontSize: getWidth(20),
              color: AppColors.textColor4,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(25)),
              child: Column(
                children: [
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
                        borderRadius: BorderRadius.circular(getWidth(15)),
                      ),
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
                            text: "Search Store",
                            fontSize: getWidth(14),
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        // Return your grid item widget here
                        return GridItemWidget(
                          index: index,
                        ); // Replace GridItemWidget with your custom grid item widget
                      },
                      childCount: 5, // Total number of grid items
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GridItemWidget extends StatelessWidget {
  final int index;

  const GridItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text(
          'Grid Item $index',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
