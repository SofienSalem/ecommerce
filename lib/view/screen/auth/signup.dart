// ignore_for_file: deprecated_member_use

import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customButtomAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImpl controller = Get.put(SignUpControllerImpl());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorApp.backgroundcolor,
            elevation: 0.0,
            title: Text('Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: ColorApp.grey))),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const CustomTitleAuth(
                text: "Welcome Back",
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
              const SizedBox(height: 10),
              CustomTextFormAuth(
                mycontroller: controller.username,
                hintText: "Enter Your Username ",
                iconData: Icons.person_outline,
                labelText: "Username",
                // mycontroller: ,
              ),
              const SizedBox(height: 10),
              CustomTextFormAuth(
                mycontroller: controller.phone,
                hintText: "Enter Your Phone Number",
                iconData: Icons.phone_android_outlined,
                labelText: "Phone",
                // mycontroller: ,
              ),
              const SizedBox(height: 10),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hintText: "Enter Your Password ",
                iconData: Icons.lock_clock_outlined,
                labelText: "Password",
                // mycontroller: ,
              ),
              
              const SizedBox(height: 10),
              CustomButtomAuth(
                text: "Sign Up",
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              CustomTextSignUpOrSignIN(
                textone: " Have an account ? ",
                texttwo: "SignIn",
                onTap: () {
                  controller.goToSignIn();
                },
              ),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
