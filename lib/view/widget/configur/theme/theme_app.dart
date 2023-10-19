//import 'package:controlgetx/core/constant/routes.dart';
// ignore_for_file: unused_label

import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:controlgetx/view/widget/configur/theme/custombuttontheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeApp extends GetView<LocaleController> {
  const ThemeApp({super.key});
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: Color.fromARGB(31, 2, 112, 7)));
  /*
 static ThemeData customOrangeTheme = ThemeData(primaryColor: Color.fromARGB(255, 241, 229, 56).withOpacity(.5))
      .copyWith(appBarTheme: AppBarTheme(color: Color.fromARGB(31, 2, 112, 7)));
  */
  static ThemeData customLightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          color: const Color.fromARGB(255, 241, 229, 56).withOpacity(.5)));
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        //color: Colors.amber,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "39".tr, //style: Theme.of(context).textTheme.headline1
            ),
            const SizedBox(height: 20),
            CustomButtonTheme(
              textbutton: "42".tr,
              onPressed: () {
                //controller.changeTheme("dark");
                Get.changeTheme(ThemeApp.customDarkTheme);
                //Get.toNamed(AppRoute.configureApplication);
              },
              use: controller.changeCheckbox(),
            ),
            CustomButtonTheme(
              textbutton: "43".tr,
              onPressed: () {
                use:
                controller.changeCheckbox();
                //controller.changeTheme('light');
                Get.changeTheme(ThemeApp.customLightTheme);
                //Get.toNamed(AppRoute.configureApplication);
              },
              use: !controller.changeCheckbox(),
            ),
          ],
        ));
  }
}
