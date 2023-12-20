import 'package:flutter/material.dart';

import '../controller/category_controller.dart';

 class AddRemoveElectronicsmWidget extends StatelessWidget {
  const AddRemoveElectronicsmWidget(
      {super.key, required this.icon, required this.electronicsController,required this.onPressed});
  final IconData icon;
    final CategoryTypeController electronicsController;
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