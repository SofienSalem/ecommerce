// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  final String text;
  const CustomTextBody({Key? key, required this.text}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1),
    );
  }
}
