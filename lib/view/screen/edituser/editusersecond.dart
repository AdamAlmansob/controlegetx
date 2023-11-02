// ignore_for_file: avoid_unnecessary_containers

import 'package:controlgetx/control/edituser_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/functions/validinput.dart';
import 'package:controlgetx/view/widget/auth/customtextformauth.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:controlgetx/view/widget/setting_widget/custmeditimagebuttom.dart';
import 'package:controlgetx/view/widget/widget_edit/custmtextformedit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditUserSecond extends StatelessWidget {
  //final int ID_PRODECT;
  //final int Numberprodect;
  //final int pricesProd;

  //final String NameProd;
  //final int numAdminProd;
  //int id_details;
  //final String prod_regdate;

  //final String endDate; ////
  //final String sDate; /////
  //final String datadetails;
  //final int numImage;
  //final String exportImage;

  const EditUserSecond({super.key});

  @override
  Widget build(BuildContext context) {
    EditUsersControllereImp controlEdit = Get.put(EditUsersControllereImp());

    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;
    final margin = const EdgeInsets.only(left: 30, right: 30);
    return Scaffold(
      //appBar:

      /*
       MainAppBar(
        cartValue: 2,
        chatValue: 2,
      ),
       */

      body: Container(
        height: height,
        decoration: const BoxDecoration(
            //color: Colors.blueAccent,
            ),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            // Section 1 - Profile Picture - Username - Name
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  Container(
                    child: const Row(children: [
                      OutBondBack(),
                      Expanded(flex: 1, child: Text('')), // Icon(Icons.save)
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      //  Navigator.of(context).push(MaterialPageRoute(  builder: (context) => MessagePage()));
                    },
                    child: Expanded(
                        //flex: 4,
                        child: IconButton(
                      iconSize: height / 8,
                      icon: const Icon(Icons.save_as),
                      color: AppColor.primaryColor,
                      onPressed: () async {
                        // await saveData(context);
                      },
                    )),
                  ),
                ],
              ),
            ),
            //////
            ///
            // Section 2 - Account Menu
            Container(
              // width: MediaQuery.of(context).size.width,
              //margin: EdgeInsets.only(top: 24),
              margin: margin,
              decoration: const BoxDecoration(
                  //color: Colors.blueAccent,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  CustomTextFormEdit(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 3, 20, "username");
                    },
                    mycontroller: controlEdit.username,
                    hinttext: "23".tr,
                    iconData: Icons.person_outline,
                    labeltext: "20".tr,
                  ),
                  const SizedBox(height: 10),
                  //
                  CustomTextFormEdit(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 3, 40, "email");
                    },
                    mycontroller: controlEdit.email,
                    hinttext: "12".tr,
                    iconData: Icons.email_outlined,
                    labeltext: "18".tr,
                  ),
                  CustomTextFormEdit(
                    isNumber: true,
                    valid: (val) {
                      return validInput(val!, 7, 11, "phone");
                    },
                    mycontroller: controlEdit.phone,
                    hinttext: "22".tr,
                    iconData: Icons.phone_android_outlined,
                    labeltext: "21".tr,
                  ),
                  CustomTextFormEdit(
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 3, 30, "password");
                    },
                    mycontroller: controlEdit.password,
                    hinttext: "13".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "19".tr,
                  ),
                  const SizedBox(height: 16),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/////
