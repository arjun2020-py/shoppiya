import 'package:flutter/material.dart';

import '../../../utils/helper/shopping_helper.dart';
import '../../../utils/shopping_color/shopping_color.dart';
import '../../auth/compoents/custom_text_widget.dart';
import '../electroincs/model/electronics_model.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.data,
  });

  final ApiResponsEelectronicsModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ShoppingColor().cutomCardColor,
      child: Column(
        children: [
          SizedBox(
              height:
                  MediaQuery.sizeOf(context).height *
                      0.5,
              child: Image.network(
                data.image,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 8),
            child: CustomTextWidget(
                text: data.title, fontSize: 18),
          ),
          VerticalSizedBox(10),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.circular(15)),
              width: 50,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.start,
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
                CustomTextWidget(
                    text: data.price.toString(),
                    fontSize: 15)
              ],
            ),
          ),
          VerticalSizedBox(10)
        ],
      ),
    );
  }
}