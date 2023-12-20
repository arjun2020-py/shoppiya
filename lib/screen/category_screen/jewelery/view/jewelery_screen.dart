import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/category_screen/jewelery/model/jewelery_model.dart';
import 'package:shoppiya/screen/category_screen/jewelery/view/deatiled_jewelery_screen.dart';
import 'package:shoppiya/utils/custom_widget/home_search.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../../utils/custom_widget/custom_back_button.dart';
import '../../../auth/compoents/custom_text_widget.dart';
import '../compoents/custom_jewelery_card.dart';
import '../controller/jewelery_controller.dart';

class JeweleryScreen extends StatelessWidget {
  JeweleryScreen({super.key});
  final jeweleryController = Get.put(JeweleryControler());
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
                () => jeweleryController.isLoding.value
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: jeweleryController.jeweleryList.length,
                        itemBuilder: (BuildContext context, int index) {
                          var data = jeweleryController.jeweleryList[index];

                          print('title == ${data.title}');
                          return InkWell(
                            onTap: () {
                              Get.to(DetailedJeweleryScreen(
                                  jeweleryControler: jeweleryController,
                                  index: index));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomJeweryCard(data: data),
                            ),
                          );
                        },
                      ),
              ),
            ),
          ],
        ));
  }
}
