import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  Login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
   late TextEditingController email;
   late TextEditingController password;

  @override
  Login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.SignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

 @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void goToSignIn() {}
  
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

}
