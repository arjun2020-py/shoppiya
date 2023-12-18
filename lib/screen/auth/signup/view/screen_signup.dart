import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppiya/screen/auth/compoents/custom_elev_button.dart';
import 'package:shoppiya/screen/auth/compoents/custom_option_widget.dart';
import 'package:shoppiya/screen/auth/compoents/custom_or_widget.dart';
import 'package:shoppiya/screen/auth/compoents/custom_text_widget.dart';
import 'package:shoppiya/screen/auth/compoents/custom_textformfiled.dart';
import 'package:shoppiya/utils/helper/shopping_helper.dart';
import 'package:shoppiya/utils/interlization/inerlization.dart';
import 'package:shoppiya/utils/shopping_images/shopping_images.dart';

import '../controller/siginup_controller.dart';

class SiginupScreen extends StatelessWidget {
  SiginupScreen({super.key});
  final signupController = Get.put(SiginupController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Obx(
            () => Form(
              key: signupController.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ShoppingImages().signup),
                  CustomTextWidget(text: LocalName.siginup.tr, fontSize: 25),
                  CustomTextformfiledWidget(
                      hintText: LocalName.email.tr,
                      validator: (value) =>
                          signupController.emailValidator(value!),
                      controller: signupController.emailController,
                      obText: false),
                  CustomTextformfiledWidget(
                      hintText: LocalName.username.tr,
                      validator: (value) =>
                          signupController.usernameValidator(value!),
                      controller: signupController.usernameController,
                      obText: false),
                  CustomTextformfiledWidget(
                      hintText: LocalName.password.tr,
                      validator: (value) =>
                          signupController.passwordValidator(value!),
                      controller: signupController.passwordController,
                      obText: true),
                  CustomTextformfiledWidget(
                      hintText: LocalName.phone.tr,
                      validator: (value) =>
                          signupController.passwordValidator(value!),
                      controller: signupController.phoneController,
                      obText: false),
                  VerticalSizedBox(20),
                  CustomElevButton(
                    buttonText: signupController.isLoading.value
                        ? CircularProgressIndicator()
                        : Text(LocalName.siginup.tr),
                    onPressed: () {
                      signupController.siginupButtonClick();
                    },
                  ),
                  VerticalSizedBox(50),
                  CustomOrWidget(),
                  CustomOptionWidget(
                    text: LocalName.alreadyHaveAnAccount.tr,
                    buttonText: LocalName.login.tr,
                    onPressed: () {
                      Get.back();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
