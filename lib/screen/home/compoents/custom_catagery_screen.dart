import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:shoppiya/screen/category_screen/jewelery/view/jewelery_screen.dart';
import 'package:shoppiya/screen/category_screen/mens/view/mens_screen.dart';
import 'package:shoppiya/screen/category_screen/womens/view/womens_screen.dart';
import 'package:shoppiya/screen/home/controller/home_controller.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

import '../../auth/compoents/custom_text_widget.dart';
import '../../category_screen/electroincs/view/electronics.dart';

class CustomCatageryScreen extends StatelessWidget {
  const CustomCatageryScreen({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Set a fixed height here as an example
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: homeController.categoryList.value.length,
          itemBuilder: (BuildContext context, int index) {
            var data = homeController.categoryList.value[index];
            return InkWell(
              onTap: () {
                if (index == 0) {
                  Get.to(ElectronicsScreen(
                    index: index,
                    categoryModel: homeController.categoryList,
                  ));
                } else if (index == 1) {
                  Get.to(JeweleryScreen());
                } else if (index == 2) {
                  Get.to(MensScreen());
                } else if (index == 3) {
                  Get.to(WomensScreen());
                }
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 100,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(data.targetUrl),
                    ),
                    CustomTextWidget(
                      fontSize: 15,
                      //  fontWeight: FontWeight.w400,
                      text: data.displayName,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
/*
 Get.to(SampleScreen(
              categoryModel: homeController.categoryList,
            ));
            */
