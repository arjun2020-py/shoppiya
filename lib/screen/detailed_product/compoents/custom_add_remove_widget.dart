import 'package:flutter/material.dart';

import '../controller/detailed_product.dart';

class addRemoveItemWidget extends StatelessWidget {
  const addRemoveItemWidget(
      {super.key, required this.icon, required this.detailedProductController,required this.onPressed});
  final IconData icon;
  final DetailedProductController detailedProductController;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: Colors.amber, width: 3)),
        child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: Colors.amber,
            )),
      ),
    );
  }
}
