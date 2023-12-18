import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:shoppiya/screen/home/controller/home_controller.dart';

import '../../auth/compoents/custom_text_widget.dart';
import '../../category_screen/view/sample.dart';

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
        () => InkWell(
          onTap: () {
            Get.to(SampleScreen());
          },
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: homeController.categoryList.value.length,
            itemBuilder: (BuildContext context, int index) {
              var data = homeController.categoryList.value[index];
              return Container(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
