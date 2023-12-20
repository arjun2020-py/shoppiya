import 'package:flutter/material.dart';

import '../../../auth/compoents/custom_text_widget.dart';
import '../controller/jewelery_controller.dart';


class CustomJewerlyPriceWidget extends StatelessWidget {
  const CustomJewerlyPriceWidget(
      {super.key, required this.jeweleryControler, required this.index});

    final JeweleryControler jeweleryControler;

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
            text: jeweleryControler.jeweleryList[index].price.toString()),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
