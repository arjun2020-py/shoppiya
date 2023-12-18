import 'package:flutter/material.dart';

class CustomOrWidget extends StatelessWidget {
  const CustomOrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.5, // Set thickness for better visibility
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text('OR'),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.5, // Set thickness for better visibility
          ),
        ),
      ],
    );
  }
}
