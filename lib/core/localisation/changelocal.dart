import 'dart:ui';

import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();
  changelang(String langcode) {
    Locale local = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(local);
  }

  @override
  void onInit() {
    String? sharedprefLang = myServices.sharedPreferences.getString("lang");

    if (sharedprefLang == "ar") {
      language = const Locale("ar");
    } else if (sharedprefLang == "en") {
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
