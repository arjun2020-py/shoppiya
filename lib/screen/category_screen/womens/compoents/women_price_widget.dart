import 'package:flutter/material.dart';
import 'package:shoppiya/screen/category_screen/womens/controller/womens_controller.dart';

import '../../../auth/compoents/custom_text_widget.dart';

class CustomWomenPriceWidget extends StatelessWidget {
  const CustomWomenPriceWidget(
      {super.key, required this.womensController, required this.index});

    final WomensController womensController;

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
            text: womensController.womensList[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}