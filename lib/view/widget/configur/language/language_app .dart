//import 'package:controlgetx/core/constant/routes.dart';
// ignore_for_file: file_names

import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:controlgetx/view/widget/configur/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageApp extends GetView<LocaleController> {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        // color: Colors.amber,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr, //style: Theme.of(context).textTheme.headline1
            ),
            const SizedBox(height: 50),
            /*
              CustomButtonLang(
                  textbutton: "40".tr,
                  onPressed: () {
                    controller.changeLang("ar");
                    //Get.toNamed(AppRoute.configureApplication);
                  }),
              */
            ////////////
            /*
              CheckboxListTile(
                  title: Text('40'.tr),
                  value: controller.changeLang("ar"),
                  /*
                 onChanged: (Val) {
                    //Val = controller.changeLang("ar");
                  }
                  */
                  ),
              */
            CustomButtonLang(
                textbutton: "40".tr,
                onPressed: () {
                  controller.changeLang("ar");

                  //Get.toNamed(AppRoute.configureApplication);
                }),
            const SizedBox(height: 30),
            CustomButtonLang(
                textbutton: "41".tr,
                onPressed: () {
                  controller.changeLang("en");

                  //Get.toNamed(AppRoute.configureApplication);
                }),
          ],
        ));
  }
}
