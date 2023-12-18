import 'package:flutter/material.dart';

import '../../screen/auth/login/view/login_screen.dart';
import '../../screen/auth/signup/view/screen_signup.dart';
import '../../screen/detailed_product/view/detailed_product.dart';
import '../../screen/home/view/home_screen.dart';

class ShoppingRouter {
  String login = 'login';
  String siginup = 'signup';
  String home = 'home';
}

Map<String, Widget Function(BuildContext)> shoppingMainRouter =
    <String, WidgetBuilder>{
  ShoppingRouter().login: (context) => LoginScreen(),
  ShoppingRouter().siginup: (context) => SiginupScreen(),
  ShoppingRouter().home: (context) => HomeScreen(),
};
