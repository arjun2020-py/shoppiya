import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/interlization/inerlization.dart';
import '../../../utils/shopping_router/shopping_router.dart';
import 'custom_text_widget.dart';

class CustomOptionWidget extends StatelessWidget {
  const CustomOptionWidget(
      {super.key,
      required this.text,
      required this.buttonText,
      required this.onPressed});
  final String text;
  final buttonText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextWidget(text: text, fontSize: 14),
        TextButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }
}
