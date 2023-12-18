import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

import '../model/api_requst_user_model/api_requst_user_model.dart';
import 'package:http/http.dart' as http;

class SiginupController extends GetxController {
  TextEditingController emailController = TextEditingController(),
      usernameController = TextEditingController(),
      passwordController = TextEditingController(),
      phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  var isLoading = false.obs;
  emailValidator(String value) {
    if (value.isEmpty) {
      return 'please enter vaild email';
    }
  }

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

  phoneValidator(String value) {
    if (value.isEmpty) {
      return 'please enter vaild phone';
    }
  }

  siginupButtonClick() {
    if (formKey.currentState!.validate()) {
      siginupApi(emailController.text, usernameController.text,
          passwordController.text, phoneController.text);
    }
  }

  Future<ApiRequstUserModel> siginupApi(
    String email,
    String username,
    String password,
    String phone,
  ) async {
    isLoading(true);
    final response =
        await http.post(Uri.parse('https://fakestoreapi.com/users'), body: {
      "email": email,
      "username": username,
      "password": password,
      "name": {"firstname": "", "lastname": ""},
      "address": {
        "city": "",
        "street": "",
        "number": 3,
        "zipcode": "",
        "geolocation": {"lat": "", "long": ""}
      },
      "phone": phone
    });
    isLoading(false);
    if (response.statusCode == 200) {
      Get.toNamed(ShoppingRouter().login);
      return ApiRequstUserModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Filed to  siginup');
    }
  }
}
