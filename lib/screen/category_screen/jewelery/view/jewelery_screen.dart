import 'package:flutter/material.dart';
import 'package:shoppiya/utils/custom_widget/home_search.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

import '../../compoents/custom_back_button.dart';

class JeweleryScreen extends StatelessWidget {
  const JeweleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ShoppingColor().appMainColor,
        appBar: AppBar(
          backgroundColor: ShoppingColor().transprentColor,
          leading: CustomBackButtonWidget(),
        ),
        body: Column(
          children: [
            ShoppingSerachWidget(),
            VerticalSizedBox(250),
            Center(
              child: Text('jewelery'),
            )
          ],
        ));
  }
}
