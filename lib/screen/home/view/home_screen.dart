import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/home/controller/home_controller.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../utils/interlization/inerlization.dart';
import '../../auth/compoents/custom_text_widget.dart';
import '../compoents/custom_catagery_screen.dart';
import '../compoents/custom_coursole_widget.dart';
import '../compoents/custom_feature_pro.dart';
import '../compoents/custom_heading_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShoppingColor().appMainColor,
        body: SafeArea(
          child: Column(
            children: [
              VerticalSizedBox(40),
              CustomHeaderSection(),
              VerticalSizedBox(40),
              CustomCarouselWidet(
                homeController: homeController,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180, top: 20),
                child: CustomTextWidget(
                    fontSize: 20,
                    // fontWeight: FontWeight.w500,
                    text: LocalName.categories.tr),
              ),
              Expanded(
                child: CustomCatageryScreen(
                  homeController: homeController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: CustomTextWidget(
                    fontSize: 20,
                    //     fontWeight: FontWeight.w500,
                    text: LocalName.features.tr),
              ),
              CustomFeatureProduct(homeController: homeController),
            ],
          ),
        ));
  }
}
