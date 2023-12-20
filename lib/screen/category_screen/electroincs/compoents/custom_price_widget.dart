import 'package:flutter/material.dart';

import '../../../auth/compoents/custom_text_widget.dart';
import '../controller/category_controller.dart';

class CustomElectronicsPriceWidget extends StatelessWidget {
  const CustomElectronicsPriceWidget(
      {super.key, required this.electronicsController, required this.index});

    final CategoryTypeController electronicsController;

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
            text: electronicsController.electronicsList[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
