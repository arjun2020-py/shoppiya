import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../../../utils/custom_widget/home_search.dart';
import '../../../../../utils/helper/shopping_helper.dart';
import '../../../../utils/custom_widget/custom_back_button.dart';
import '../compoents/women_list_view_widget.dart';
import '../controller/womens_controller.dart';

class WomensScreen extends StatelessWidget {
  WomensScreen({super.key});
  final womenController = Get.put(WomensController());
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
              () => womenController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: womenController.womensList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var data = womenController.womensList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: WomenListViewWidget(data: data),
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
