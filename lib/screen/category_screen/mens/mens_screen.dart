import 'package:flutter/material.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../utils/custom_widget/home_search.dart';
import '../../../utils/helper/shopping_helper.dart';
import '../compoents/custom_back_button.dart';

class MensScreen extends StatelessWidget {
  const MensScreen({super.key});

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
              child: Text('mens'),
            )
      ],
      ),
    );
  }
}