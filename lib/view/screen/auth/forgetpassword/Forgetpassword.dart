// ignore_for_file: deprecated_member_use

import 'package:ecommerce/controller/auth/Forgetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customButtomAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller =
        Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorApp.backgroundcolor,
            elevation: 0.0,
            title: Text('Forget Password',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: ColorApp.grey))),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const CustomTitleAuth(
                text: "Check Your Email ",
              ),
              const SizedBox(height: 15),
              const CustomTextBody(
                  text:
                      "Sign Up With Your Email And Password OR  Continue With Your Social Media"),
              const SizedBox(height: 20),
              CustomTextFormAuth(
                  mycontroller: controller.email,
                  hintText: "Enter Your Email ",
                  iconData: Icons.email_outlined,
                  labelText: "Email"),
              const SizedBox(height: 25),
              CustomButtomAuth(
                text: "Check",
                onPressed: () {
                  controller.goToVerifyCode();
                },
              ),
            ],
          ),
        ));
  }
}
