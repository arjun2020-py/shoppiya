import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/utils/custom_widget/home_search.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../controller/category_controller.dart';

class SampleScreen extends StatelessWidget {
  SampleScreen({super.key});
  final categoryController = Get.put(CategoryTypeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShoppingColor().appMainColor,
        appBar: AppBar(
          backgroundColor: ShoppingColor().transprentColor,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: Column(
          children: [
            ShoppingSerachWidget(),
            Expanded(
              child: Obx(
                              () => categoryController.isLodaing.value ? Center(child: CircularProgressIndicator()): ListView.builder(
                  itemCount: categoryController.electronicsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    var data = categoryController.electronicsList[index];
                    return Card(
                      
                      child: Text(data.title),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
