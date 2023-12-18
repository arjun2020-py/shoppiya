import 'package:flutter/material.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton(
      {super.key,
      required this.text,
      required this.onpressed,
      required this.textColor,
      required this.buttonBgColor,
      required this.buttonRadius,
      required this.sizedBoxWidth,
      required this.sizedBoxHieght,
      this.borderColor});
  final String text;
  final Color textColor;
  final VoidCallback? onpressed;
  final Color buttonBgColor;
  final double buttonRadius;
  final double sizedBoxWidth;
  final double sizedBoxHieght;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * sizedBoxWidth,
      height: MediaQuery.sizeOf(context).width * sizedBoxHieght,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        style: ElevatedButton.styleFrom(
            side: BorderSide(width: 2, color: borderColor ?? Colors.white),
            backgroundColor: buttonBgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius))),
      ),
    );
  }
}