import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/custom_widget/custom_elev_butt_widget.dart';
import '../../../../utils/interlization/inerlization.dart';
import '../../../../utils/shopping_color/shopping_color.dart';
import '../../../auth/compoents/custom_text_widget.dart';
import '../controller/category_controller.dart';

class DetailedElectronicsScreen extends StatelessWidget {
  DetailedElectronicsScreen({
    super.key,
    required this.electronicsController,
    required this.index,
  });
  final CategoryTypeController electronicsController;
  final int index;
  final detailedProductController = Get.put(CategoryTypeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShoppingColor().appMainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                      width: 200,
                      child: Image.network(
                        electronicsController.electronicsList[index].image,
                      )),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomTextWidget(
                      fontSize: 11,
                      // fontWeight: FontWeight.w500,
                      text: electronicsController.electronicsList[index].title),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  CustomTextWidget(
                      fontSize: 12,
                      //  fontWeight: FontWeight.w400,
                      text: LocalName.reviwers.tr),
                  SizedBox(
                    width: 5,
                  ),
                  CustomTextWidget(
                      fontSize: 12,
                      //  fontWeight: FontWeight.w400,
                      text: electronicsController
                          .electronicsList[index].rating.rate
                          .toString()),
                  SizedBox(
                    width: 5,
                  ),
                  CustomTextWidget(
                      fontSize: 12,
                      //  fontWeight: FontWeight.w400,
                      text: '('),
                  CustomTextWidget(
                      fontSize: 12,
                      //   fontWeight: FontWeight.w400,
                      text: electronicsController
                          .electronicsList[index].rating.count
                          .toString()),
                  CustomTextWidget(
                      fontSize: 12,
                      //fontWeight: FontWeight.w400,
                      text: ')')
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      width: 35,
                      height: 40,
                      child: Center(
                        child: Obx(
                          () => CustomTextWidget(
                              fontSize: 14,
                              // fontWeight: FontWeight.w400,
                              text: detailedProductController.count.value
                                  .toString()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CustomElevButton(
                      text: LocalName.addToCart.tr,
                      onpressed: () {},
                      textColor: Colors.white,
                      buttonBgColor: ShoppingColor().buttonColor,
                      buttonRadius: 18,
                      sizedBoxWidth: 0.4,
                      sizedBoxHieght: 0.15),
                  SizedBox(
                    width: 20,
                  ),
                  CustomElevButton(
                      text: LocalName.buyNow.tr,
                      onpressed: () {},
                      textColor: ShoppingColor().blackColor,
                      buttonBgColor: ShoppingColor().whiteColor,
                      buttonRadius: 18,
                      sizedBoxWidth: 0.4,
                      sizedBoxHieght: 0.15)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: CustomTextWidget(
                    fontSize: 18,
                    // fontWeight: FontWeight.w500,
                    text: LocalName.decrption.tr),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                child: CustomTextWidget(
                    fontSize: 16,
                    //   fontWeight: FontWeight.w300,
                    textAlign: TextAlign.justify,
                    text: electronicsController
                        .electronicsList[index].description),
              )
            ],
          ),
        ],
      ),
    );
  }
}
