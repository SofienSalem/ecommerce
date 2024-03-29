// ignore_for_file: deprecated_member_use

import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customButtomAuth.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorApp.backgroundcolor,
            elevation: 0.0,
            title: Text('Sign In',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: ColorApp.grey))),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              LogoAuth(),
              const CustomTitleAuth(
                text: "Welcome Back",
              ),
              const SizedBox(height: 15),
              const CustomTextBody(
                  text:
                      "Sign In With Your Email And Password OR  Continue With Your Social Media"),
              const SizedBox(height: 20),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hintText: "Enter Your Email ",
                iconData: Icons.email_outlined,
                labelText: "Email",
                // mycontroller: ,
              ),
              CustomTextFormAuth(
                mycontroller: controller.password,
                hintText: "Enter Your Password ",
                iconData: Icons.lock_clock_outlined,
                labelText: "Password",
                // mycontroller: ,
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  "Forget Password",
                  textAlign: TextAlign.end,
                ),
              ),
              const SizedBox(height: 10),
              CustomButtomAuth(
                text: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(height: 25),
              CustomTextSignUpOrSignIN(
                textone: "Don't have an account ? ",
                texttwo: "SignUp",
                onTap: () {
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ));
  }
}
