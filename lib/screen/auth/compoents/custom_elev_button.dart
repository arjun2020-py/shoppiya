import 'package:flutter/material.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton(
      {super.key, required this.buttonText, required this.onPressed});
  final Widget buttonText;

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: buttonText,
        style: ElevatedButton.styleFrom(backgroundColor: Color(0xffed5685)),
      ),
    );
  }
}
