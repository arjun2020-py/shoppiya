import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/category_screen/mens/model/mens_model.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../../utils/custom_widget/custom_back_button.dart';
import '../../../../utils/custom_widget/home_search.dart';
import '../../../../utils/helper/shopping_helper.dart';
import '../../../auth/compoents/custom_text_widget.dart';
import '../compoents/mens_list_view_widget.dart';
import '../controller/mens_controller.dart';

class MensScreen extends StatelessWidget {
  MensScreen({super.key});
  final mensController = Get.put(MensController());
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
          Obx(
            () => mensController.isLodaing.value
                ? CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: mensController.mensList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = mensController.mensList[index];
                        return 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MensCardListWidget(data: data),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

 
