import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/detailed_product/view/detailed_product.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../auth/compoents/custom_text_widget.dart';
import '../controller/home_controller.dart';

class CustomFeatureProduct extends StatelessWidget {
  const CustomFeatureProduct({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => homeController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeController.featureProduct.length,
                itemBuilder: (BuildContext context, int index) {
                  var data = homeController.featureProduct.value[index];
                  return InkWell(
                    onTap: () {
                      Get.to(DetailedProductScreen(
                          homeController: homeController, index: index));
                    },
                    child: SizedBox(
                      // height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                            color: ShoppingColor().cutomCardColor,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                        width: MediaQuery.sizeOf(context).width,
                                        height: 80,
                                        child: Image.network(
                                          data.image,
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 250, top: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white60,
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: CustomTextWidget(
                                      text: data.title, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 220),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    width: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextWidget(
                                          text: data.rating.rate.toString(),
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 20,
                                      ),
                                      CustomTextWidget(
                                          text: data.price.toString(),
                                          fontSize: 15)
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
