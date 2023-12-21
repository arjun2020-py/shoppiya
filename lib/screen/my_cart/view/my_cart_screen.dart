import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/auth/compoents/custom_text_widget.dart';
import 'package:shoppiya/utils/custom_widget/custom_back_button.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/interlization/inerlization.dart';
import 'package:shoppiya/utils/shopping_color/shopping_color.dart';

import '../../../utils/shopping_images/shopping_images.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ShoppingColor().appMainColor,
      appBar: AppBar(
        backgroundColor: ShoppingColor().transprentColor,
        centerTitle: true,
        leading: CustomBackButtonWidget(),
        title: CustomTextWidget(text: LocalName.myCart.tr, fontSize: 20),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              CustomImage().profileImage,
            ),
          ),
          HoroztalSizedBox(10)
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: ShoppingColor().cutomCardColor,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/electronics.png',
                  height: 60,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                          CustomTextWidget(text: 'product name', fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 16,
                          ),
                          CustomTextWidget(text: '5.90', fontSize: 15)
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                HoroztalSizedBox(10)
              ],
            ),
          );
        },
      ),
    );
  }
}
