// ignore_for_file: prefer_const_constructors

import 'package:controlgetx/core/localization/change_local_pow.dart';
import 'package:controlgetx/view/widget/configur/powers/custombotton_power.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:access_control/access_control.dart';
class PowersApp extends GetView<LocaleControllerPowers> {
  const PowersApp({super.key});

  RxBool get u => false.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        // color: Colors.amber,
        margin: EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "46".tr, //style: Theme.of(context).textTheme.headline1
            ),
            const SizedBox(height: 20),
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
            CustomButtonPowers(
              textbutton: "47".tr,
              onPressed: (c) {
                controller.changePowers("47".tr, c);
                c = u as bool;

                //Get.toNamed(AppRoute.configureApplication);
              },
              use: u.isTrue,
            ),

            CustomButtonPowers(
              textbutton: "44".tr,
              onPressed: (c) {
                controller.changePowers("44".tr, c);
                c = u as bool;

                //Get.toNamed(AppRoute.configureApplication);
              },
              use: u.value,
            ),
            CustomButtonPowers(
              textbutton: "45".tr,
              onPressed: (c) {
                controller.changePowers("45".tr, c);

                //Get.toNamed(AppRoute.configureApplication);
              },
              use: u.value,
            ),
          ],
        ));
  }
}
