// ignore_for_file: deprecated_member_use

import 'package:ecommerce/controller/auth/resetpassword_contoller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customButtomAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';

import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
    Get.put(ResetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorApp.backgroundcolor,
            elevation: 0.0,
            title: Text('Reset Password',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: ColorApp.grey))),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const SizedBox(height: 20),
              const CustomTitleAuth(
                text: "New Password ",
              ),
              const SizedBox(height: 15),
              const CustomTextBody(
                  text:
                      "Please Enter Your New Password"),
              
             const SizedBox(height: 50),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hintText: "Enter Your Password ",
                iconData: Icons.lock_clock_outlined,
                labelText: "Password",
                // mycontroller: ,
              ),
              const SizedBox(height: 20),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hintText: " Confirm Your Password ",
                iconData: Icons.lock_clock_outlined,
                labelText: "Password",
                // mycontroller: ,
              ),
              
              
              const SizedBox(height: 45),
              CustomButtomAuth(
                text: "SAVE",
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
