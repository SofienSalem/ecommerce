
import 'package:ecommerce/controller/auth/verifycode_controller.dart';
import 'package:ecommerce/core/constant/color.dart';

import 'package:ecommerce/view/widget/auth/customtextbody.dart';

import 'package:ecommerce/view/widget/auth/customtitleAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImpl controller = Get.put(VerifyCodeControllerImpl());
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: ColorApp.backgroundcolor,
            elevation: 0.0,
            title: Text('Verification Code',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: ColorApp.grey))),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
          child: ListView(
            children: [
              const SizedBox(height: 35),
              const CustomTitleAuth(
                text: "Check Your Code ",
              ),
              const SizedBox(height: 15),
              const CustomTextBody(text: "Please Enter The Digit Code Sent To"),
              const SizedBox(height: 120),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(15),
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
              const SizedBox(height: 25),
            ],
          ),
        ));
  }
}
