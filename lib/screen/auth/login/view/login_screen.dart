import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/shopping_images/shopping_images.dart';
import 'package:shoppiya/utils/shopping_router/shopping_router.dart';

import '../../../../utils/interlization/inerlization.dart';
import '../../compoents/custom_elev_button.dart';
import '../../compoents/custom_option_widget.dart';
import '../../compoents/custom_or_widget.dart';
import '../../compoents/custom_text_widget.dart';

import '../../compoents/custom_textformfiled.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: loginController.formKey,
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ShoppingImages().login),
                    CustomTextWidget(
                      text: 'Login',
                      fontSize: 25,
                    ),
                    CustomTextformfiledWidget(
                      obText: false,
                      controller: loginController.usernameText,
                      hintText: LocalName.username.tr,
                      validator: (value) =>
                          loginController.usernameValidator(value!),
                    ),
                    CustomTextformfiledWidget(
                      obText: true,
                      controller: loginController.passwrodText,
                      hintText: LocalName.password.tr,
                      validator: (value) =>
                          loginController.passwordValidator(value!),
                    ),
                    VerticalSizedBox(20),
                    CustomElevButton(
                      buttonText: loginController.isLoading.value
                          ? CircularProgressIndicator()
                          : Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                      onPressed: () {
                        loginController.loginButtonClick();
                      },
                    ),
                    VerticalSizedBox(50),
                    // CustomOrWidget(),
                    // CustomOptionWidget(
                    //   text: LocalName.needanAccount.tr,
                    //   buttonText: LocalName.siginup.tr,
                    //   onPressed: () {
                    //     Get.toNamed(ShoppingRouter().siginup);
                    //   },
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
