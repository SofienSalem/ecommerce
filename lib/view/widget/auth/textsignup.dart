import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIN extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function() onTap;

  const CustomTextSignUpOrSignIN({
    super.key,
    required this.textone,
    required this.texttwo, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap:onTap,
          child: Text(
            texttwo,
            style: TextStyle(
                color: ColorApp.primaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
