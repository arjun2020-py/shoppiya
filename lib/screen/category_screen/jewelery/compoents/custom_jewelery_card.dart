import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/custom_widget/custom_elev_butt_widget.dart';
import '../../../../utils/helper/shopping_helper.dart';
import '../../../../utils/interlization/inerlization.dart';
import '../../../../utils/shopping_color/shopping_color.dart';
import '../../../auth/compoents/custom_text_widget.dart';
import '../model/jewelery_model.dart';

class CustomJeweryCard extends StatelessWidget {
  const CustomJeweryCard({
    super.key,
    required this.data,
  });

  final ApiResponseJeweleryModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ShoppingColor().cutomCardColor,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: Image.network(
                data.image,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomTextWidget(text: data.title, fontSize: 18),
          ),
          VerticalSizedBox(10),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: data.rating.rate.toString(),
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          VerticalSizedBox(10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(
                  Icons.currency_rupee,
                  size: 20,
                ),
                CustomTextWidget(text: data.price.toString(), fontSize: 15),
                Spacer(),
                CustomElevButton(
                    text: LocalName.addToCart.tr,
                    onpressed: () {},
                    textColor: Colors.white,
                    buttonBgColor: ShoppingColor().buttonColor,
                    buttonRadius: 15,
                    sizedBoxWidth: 0.4,
                    sizedBoxHieght: 0.15),
                VerticalSizedBox(10)
              ],
            ),
          ),
          VerticalSizedBox(10)
        ],
      ),
    );
  }
}
