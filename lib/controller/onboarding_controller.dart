import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;

  int currentPage = 0;
  @override
  next() {
    currentPage++;

    if (currentPage > onBordinglist.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
