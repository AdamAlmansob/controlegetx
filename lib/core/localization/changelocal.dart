//import 'package:controlgetx/core/constant/apptheme.dart';
import 'package:controlgetx/core/services/services.dart';
//import 'package:controlgetx/view/widget/configur/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  Locale? theme;
  var isl = false.obs;
  var isd = false.obs;
  //var isRegular = false.obs;
  MyServices myServices = Get.find();

  //ThemeData appTheme = themeEnglish;

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    //appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    //Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  changePowers(String powerscode) {
    Locale locale = Locale(powerscode);
    myServices.sharedPreferences.setString("power", powerscode);
    //appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    //Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  changeCheckboxx(String con) {
    bool _isA = false;
    bool _isE = false;
    bool choose = false;
    return (con=="ar")?choose! :choose;
    //Get.updateLocale(l);
    //return true;
  }

  bool changeCheckbox( String co) {
    bool _isA = false;
    bool _isE = false;
    bool choose = false;
    // "43".tr
    if (co== "43".tr) {
                    _isA = choose;
                    _isE = false;
                    return !_isA;
                    //_isOwner = false;
                  }
                  else {
                   _isE=choose; 
                   _isA = false;
      return !_isE ;
    }

    
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
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    //String? sharedPrefTheme = myServices.sharedPreferences.getString("theme");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      //appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      //appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
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
