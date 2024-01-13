import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatefulWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  State<CustomDotControllerOnBoarding> createState() =>
      _CustomDotControllerOnBoardingState();
}

class _CustomDotControllerOnBoardingState
    extends State<CustomDotControllerOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBordinglist.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: ColorApp.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
