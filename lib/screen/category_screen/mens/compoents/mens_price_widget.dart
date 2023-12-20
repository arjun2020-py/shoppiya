import 'package:flutter/material.dart';
import 'package:shoppiya/screen/category_screen/mens/controller/mens_controller.dart';

import '../../../auth/compoents/custom_text_widget.dart';

class CustomMensPriceWidget extends StatelessWidget {
  const CustomMensPriceWidget(
      {super.key, required this.mensController, required this.index});

    final MensController mensController;

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
            text: mensController.mensList[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}