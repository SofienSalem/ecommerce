// ignore_for_file: deprecated_member_use

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customtextbody.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 20),
              const CustomTitleAuth(
                text: "Welcome Back",
              ),
              const SizedBox(height: 15),
              const CustomTextBody(
                  text:
                      "Sign In With Your Email And Password OR  Continue With Your Social Media"),
              const SizedBox(height: 60),
              const CustomTextFormAuth(
                hintText: "Enter Your Email ",
                iconData: Icons.email_outlined,
                labelText: "Email",
                // mycontroller: ,
              ),
              const CustomTextFormAuth(
                hintText: "Enter Your Password ",
                iconData: Icons.lock_clock_outlined,
                labelText: "Password",
                // mycontroller: ,
              ),
            ],
          ),
        ));
  }
}
