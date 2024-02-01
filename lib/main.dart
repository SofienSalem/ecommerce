// ignore_for_file: deprecated_member_use

import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localisation/changelocal.dart';
import 'package:ecommerce/core/localisation/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
            headline1: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: ColorApp.black),
            headline2: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: ColorApp.black),
            bodyText1: const TextStyle(
                height: 2,
                color: ColorApp.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyText2:
                const TextStyle(height: 2, color: ColorApp.grey, fontSize: 12)),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      //home: Test(),
      routes: routes,
    );
  }
}
