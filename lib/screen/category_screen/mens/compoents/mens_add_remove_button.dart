import 'package:flutter/material.dart';
import 'package:shoppiya/screen/category_screen/mens/controller/mens_controller.dart';

class AddRemoveMensWidget extends StatelessWidget {
  const AddRemoveMensWidget(
      {super.key, required this.icon, required this.mensController,required this.onPressed});
  final IconData icon;
    final MensController mensController;
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