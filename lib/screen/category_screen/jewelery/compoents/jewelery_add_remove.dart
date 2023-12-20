 import 'package:flutter/material.dart';
import 'package:shoppiya/screen/category_screen/jewelery/controller/jewelery_controller.dart';

class AddRemoveJewerlyWidget extends StatelessWidget {
  const AddRemoveJewerlyWidget(
      {super.key, required this.icon, required this.jeweleryControler,required this.onPressed});
  final IconData icon;
    final JeweleryControler jeweleryControler;
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