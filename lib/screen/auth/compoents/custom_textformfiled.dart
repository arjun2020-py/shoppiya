import 'package:flutter/material.dart';

class CustomTextformfiledWidget extends StatelessWidget {
  const CustomTextformfiledWidget(
      {super.key,
      required this.hintText,
      required this.validator,
      required this.controller,
      required this.obText});
  final String hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool obText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
