import 'package:get/route_manager.dart';

class Interlization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          LocalName.shoppiya: 'Shoppiya',
          LocalName.login: 'Login',
          LocalName.siginup: 'Sigin Up',
          LocalName.username: 'Username',
          LocalName.password: 'Password',
          LocalName.phone: 'Phone',
          LocalName.enterVaildUsername: 'Enter Vaild Username',
          LocalName.enterVaildPasswrod: 'Enter vaild paswwrod',
          LocalName.needanAccount: 'Need an account?',
          LocalName.alreadyHaveAnAccount: 'Already have an account?',
          LocalName.categories: 'Categories',
          LocalName.electronics: 'Electronics',
          LocalName.jewelery: 'Jewelery',
          LocalName.mensClothing: 'men\'s',
          LocalName.womenClothing: 'women\'s',
          LocalName.features: "Featured Product",
          LocalName.searchProduct: "Search Product",
          LocalName.reviwers: "Reviwers",
          LocalName.addToCart: "add To Cart",
          LocalName.buyNow: "buy Now",
          LocalName.decrption: "Decrption",
          LocalName.myCart: "My Cart",
          LocalName.proceedToCheckout : "Proceed To Checkout"
        }
      };
}

class LocalName {
  static String shoppiya = 'shoppiya';
  static String login = 'login';
  static String siginup = 'siginup';
  static String username = 'username';
  static String password = 'password';
  static String email = 'email';
  static String phone = 'phone';
  static String enterVaildUsername = 'enter_vaild_username';
  static String enterVaildPasswrod = 'enter_vaild_password';
  static String needanAccount = 'need_an_account';
  static String alreadyHaveAnAccount = 'already_have_an_account';
  static String categories = 'categories';
  static String electronics = 'electronics';
  static String jewelery = 'jewelery';
  static String mensClothing = 'men\'s clothing';
  static String womenClothing = 'women\'s clothing';
  static String features = 'features_product';
  static String searchProduct = 'serach_product';
  static String reviwers = 'reviwers';
  static String addToCart = 'addToCart';
  static String buyNow = 'buyNow';
  static String decrption = 'decrption';
  static String myCart = 'my_cart';
  static String proceedToCheckout = 'proceed_to_checkout';
}
