import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBordinglist.length,
      itemBuilder: (context, i) => Column(children: [
        SizedBox(height: 50),
        Image.asset(
          onBordinglist[i].image!,
          width: 200,
          height: 230,
          fit: BoxFit.fill,
        ),
        const SizedBox(height: 70),
        Text(onBordinglist[i].title!,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 80),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onBordinglist[i].body!,
                textAlign: TextAlign.center,
                // ignore: deprecated_member_use
                style: Theme.of(context).textTheme.bodyText1))
      ]),
    );
  }
}
