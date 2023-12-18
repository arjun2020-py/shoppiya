import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:shoppiya/screen/auth/login/model/api_response_login_model/api_response_login_model.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

import '../model/api_requst_login_model/api_requst_login_model.dart';

class LoginController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController usernameText = TextEditingController(),
      passwrodText = TextEditingController();
  var formKey = GlobalKey<FormState>();

  usernameValidator(String value) {
    if (value.isEmpty) {
      return 'please enter vaild username';
    }
  }

  passwordValidator(String value) {
    if (value.isEmpty) {
      return 'please enter vaild password';
    }
  }

  loginButtonClick() {
    if (formKey.currentState!.validate()) {
      loginApi(usernameText.text, passwrodText.text);
    }
  }

  Future<ApiRequstLoginModel> loginApi(String username, String password) async {
    isLoading(true);
    final response = await http.post(
        Uri.parse('https://fakestoreapi.com/auth/login'),
        body: {"username": username, "password": password});

    isLoading(false);

    if (response.statusCode == 200) {
      final apiResponse =
          ApiResponseLoginModel.fromJson(jsonDecode(response.body));

      final token = apiResponse.token;

      GetStorage().write('token', token);

      Get.toNamed(ShoppingRouter().home);
      print('response of login ${response}');
      return ApiRequstLoginModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Filed to login');
    }
  }
}
