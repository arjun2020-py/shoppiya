import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../interlization/inerlization.dart';

class ShoppingSerachWidget extends StatelessWidget {
  const ShoppingSerachWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            suffixIcon: Icon(Icons.cancel_rounded),
            hintText: LocalName.searchProduct.tr,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(40)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}
