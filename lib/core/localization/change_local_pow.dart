import 'package:controlgetx/core/services/services.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleControllerPowers extends GetxController {
  Locale? powers;
  //Locale? theme;

  // ملاحظة عنداستخدام الصلاحية يجب التغيير

  MyServices myServices = Get.find();

  //ThemeData appTheme = themeEnglish;

  changePowers(String powerscode, bool choose) {
    Locale locale = Locale(powerscode);
    myServices.sharedPreferences.setString("power", powerscode);
    //bool choose = false;
    changeCheckbox(choose);
    //appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    //Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  bool changeCheckbox(bool choose) {
    //bool choose = false;
    return choose = !choose;
    /*
   if (choose == false) {
      return choose=choose!;
    } else if (choose == '') {
      return choose=choose!;
    } else {
      return false;
    }
    */
  }
  /*
  changeTheme(String themecode) {
    Locale locale = Locale(themecode);
    myServices.sharedPreferences.setString("theme", themecode);
    //appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    //Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }
  */

  @override
  void onInit() {
    String? sharedPrefPoewr = myServices.sharedPreferences.getString("power");
    //String? sharedPrefTheme = myServices.sharedPreferences.getString("theme");
    if (sharedPrefPoewr == "47".tr) {
      powers = const Locale("Developer");
      //appTheme = themeArabic;
    } else if (sharedPrefPoewr == "44".tr) {
      powers = const Locale("Manager");
      //appTheme = themeEnglish;
    } else {
      powers = const Locale("Employe");
      //appTheme = themeEnglish;
    }
    /*
    if (sharedPrefTheme == "dark") {
      theme = ThemeApp.customLightTheme as Locale?;
      //appTheme = themeArabic;
    } else if (sharedPrefTheme == 'light') {
      theme = ThemeApp.customDarkTheme as Locale;
      //appTheme = themeEnglish;
    }
    */
    super.onInit();
  }
}
