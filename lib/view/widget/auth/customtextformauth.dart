import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? mycontroller;

  const CustomTextFormAuth(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.mycontroller})
      : super(key: key);

  Widget build(BuildContext context) {
    var mycontroller;
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labelText)),
            suffixIcon: Icon(iconData),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
