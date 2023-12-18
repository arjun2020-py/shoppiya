import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(
      {super.key, required this.text, required this.fontSize,this.color,this.textAlign});
  final String text;
  final double fontSize;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign, 
      text,
      style: TextStyle(fontSize: fontSize,color: color,),
    );
  }
}
