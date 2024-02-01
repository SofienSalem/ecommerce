import 'package:ecommerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  check();
  goToSuccessSignUp();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController email;

  @override
  check() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.verifyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
