import 'package:flutter/material.dart';
import 'package:shoppiya/screen/category_screen/womens/controller/womens_controller.dart';

class AddRemoveWomenWidget extends StatelessWidget {
  const AddRemoveWomenWidget(
      {super.key, required this.icon, required this.womensController,required this.onPressed});
  final IconData icon;
    final WomensController womensController;
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