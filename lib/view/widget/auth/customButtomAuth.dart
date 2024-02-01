import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtomAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20) ),
        padding: EdgeInsets.symmetric(vertical: 12),
        onPressed: onPressed,
        color: ColorApp.primaryColor,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
