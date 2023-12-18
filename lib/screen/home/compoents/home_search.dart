import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/interlization/inerlization.dart';



class HomeSerchWidget extends StatelessWidget {
  const HomeSerchWidget({
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
            hintText: LocalName.searchProduct.tr,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(40)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(40))),
      ),
    );
  }
}