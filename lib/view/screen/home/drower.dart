// ignore_for_file: unused_local_variable, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:controlgetx/core/constant/color.dart';
//import 'package:marketing_platform_new/mode/Model/Product.dart';

class DrowerTwo2 extends StatelessWidget {
  const DrowerTwo2({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return Drawer(
      child: /*Directionality(
          textDirection: TextDirection.rtl,
          child: )*/
          ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                '  ',
              ),
            ),
            decoration: BoxDecoration(
              color: AppColor.primary,
            ),
          ),
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
                    "49".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              Get.toNamed(AppRoute.signUp);
              //Navigator.pop(context);
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddProdectPage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.edit,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "50".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //Navigator.pop(context);
              Get.toNamed(AppRoute.editUserPage);
              //	Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdamPage()));
              var myProdect;
            },
          ),
          ListTile(
            title: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.delete,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "51".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //Navigator.pop(context);
              Get.toNamed(AppRoute.deleteUsers);
            },
          ),
          ListTile(
            title: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.message_sharp,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "52".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //controller.goToFirestPageMessage();
              Get.toNamed(AppRoute.homeMessage);
              // Navigator.pop(context);
              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagePage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.settings,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "53".tr,
                    // textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //Navigator.pop(context);
              Get.toNamed(AppRoute.settingsPage);
              //	Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdamPage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.devices_fold_outlined,
                      color: AppColor.primaryColor,
                    )),
                Expanded(
                  flex: 3,
                  child: Text(
                    "54".tr,
                    //textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            ),
            onTap: () {
              //Navigator.pop(context);
              Get.toNamed(AppRoute.definitionAboutPlatform);
              //	Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdamPage()));
            },
          ),
        ],
      ),
    );
  }
}
