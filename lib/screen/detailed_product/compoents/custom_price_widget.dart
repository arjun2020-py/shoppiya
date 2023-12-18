import 'package:flutter/material.dart';
import 'package:shoppiya/screen/home/controller/home_controller.dart';

import '../../auth/compoents/custom_text_widget.dart';

class CustomFoodPriceWidget extends StatelessWidget {
  const CustomFoodPriceWidget(
      {super.key, required this.homeController, required this.index});

  final HomeController homeController;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.currency_rupee,
          color: Colors.amber,
          size: 15,
        ),
        CustomTextWidget(
            fontSize: 15,
            //   fontWeight: FontWeight.w500,
            text: homeController.featureProduct[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
