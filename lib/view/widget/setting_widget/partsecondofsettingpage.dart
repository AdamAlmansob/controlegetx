// ignore_for_file: avoid_unnecessary_containers

import 'dart:io';

import 'package:controlgetx/control/settings_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/functions/alertexitapp.dart';
import 'package:controlgetx/view/widget/setting_widget/partoneofsettingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartSecondOfSettingsPage extends StatelessWidget {
  const PartSecondOfSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controlSetting = Get.put(SettingsControllerImp());
    return Container(
      child: Column(
        //padding: EdgeInsets.zero,
        children: [
          //PartOnOfSettingPage(),

          ListTile(
            title: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.add,
                    color: AppColor.primaryColor,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "61".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              controlSetting.goToAddAds();
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.camera_alt,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "62".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              controlSetting.goToAddImageAds();
            },
          ),
          ListTile(
            title: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.output,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "63".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //controlSetting.goToOutSide();
              //alertExitApp;
              //alertExitApp as bool;
              exit(0);
            },
          ),
        ],
      ),
    );
  }
}
