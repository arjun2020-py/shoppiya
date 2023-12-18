import 'package:flutter/material.dart';

import '../../../utils/helper/shopping_helper.dart';
import '../../../utils/shopping_images/shopping_images.dart';

class CustomHeaderSection extends StatelessWidget {
  const CustomHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HoroztalSizedBox(10),
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(
            CustomImage().profileImage,
          ),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              size: 25,
            )),
        HoroztalSizedBox(10)
      ],
    );
  }
}
