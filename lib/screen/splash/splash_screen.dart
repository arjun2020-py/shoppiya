import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/utils/interlization/inerlization.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import 'splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShoppingColor().appBackColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocalName.shoppiya.tr,
              style:
                  TextStyle(fontSize: 30, color: ShoppingColor().appNameColor),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: ShoppingColor().appNameColor,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
