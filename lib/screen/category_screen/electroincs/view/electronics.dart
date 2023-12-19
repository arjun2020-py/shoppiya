import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/auth/compoents/custom_text_widget.dart';
import 'package:shoppiya/screen/category_screen/electroincs/model/electronics_model.dart';
import 'package:shoppiya/utils/custom_widget/home_search.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../home/model/category_list_model.dart';
import '../../compoents/custom_list_view_widget.dart';
import '../../compoents/custom_back_button.dart';
import '../controller/category_controller.dart';

class ElectronicsScreen extends StatelessWidget {
  ElectronicsScreen({super.key, required this.categoryModel,required this.index});
  final RxList<CatageryModel> categoryModel;
  int index;
  final categoryController = Get.put(CategoryTypeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShoppingColor().appMainColor,
        appBar: AppBar(
          backgroundColor: ShoppingColor().transprentColor,
          leading: CustomBackButtonWidget(),
        ),
        body: Column(
          children: [
            ShoppingSerachWidget(),
            VerticalSizedBox(50),
            Expanded(
              child: Obx(
                () => categoryController.isLodaing.value
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: categoryController.electronicsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          var data = categoryController.electronicsList[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomCardWidget(data: data),
                          );
                        },
                      ),
              ),
            ),
          ],
        ));
  }
}




