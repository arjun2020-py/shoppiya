import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tab,
      required this.desktop});

  final Widget mobile;
  final Widget tab;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 576;
  static bool isTab(BuildContext context) =>
      MediaQuery.of(context).size.width >= 576 &&
      MediaQuery.sizeOf(context).width < 992;

  static bool isDektop(BuildContext context) =>
      MediaQuery.of(context).size.width > 992;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    if (size.width > 992) {
      return desktop;
    } else if (size.width >= 576) {
      return tab;
    } else {
      return mobile;
    }

  }
}
