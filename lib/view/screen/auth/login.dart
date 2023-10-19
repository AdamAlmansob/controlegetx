import 'package:controlgetx/control/auth/login_controller.dart';

import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/functions/alertexitapp.dart';
import 'package:controlgetx/core/functions/validinput.dart';
import 'package:controlgetx/core/localization/change_local_pow.dart';
import 'package:controlgetx/view/widget/auth/custombuttonauth.dart';
import 'package:controlgetx/view/widget/auth/customtextbodyauth.dart';
import 'package:controlgetx/view/widget/auth/customtextformauth.dart';
import 'package:controlgetx/view/widget/auth/customtexttitleauth.dart';
import 'package:controlgetx/view/widget/auth/logoauth.dart';
import 'package:controlgetx/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends GetView<LocaleControllerPowers> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: const Text('Sign In',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: AppColor.grey)
            //style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)
            ),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const LogoAuth(),
                const SizedBox(height: 20),
                CustomTextTitleAuth(text: "10".tr),
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "11".tr),
                const SizedBox(height: 15),
                CustomTextFormAuth(
                  isNumber: false,

                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "18".tr,
                  // mycontroller: ,
                ),
                GetBuilder<LoginControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    mycontroller: controller.password,
                    hinttext: "13".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "19".tr,
                    // mycontroller: ,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();
                  },
                  child: Text(
                    "14".tr,
                    textAlign: TextAlign.right,
                  ),
                ),
                CustomButtomAuth(
                    text: "15".tr,
                    onPressed: () {
                      controller.login();
                    }),
                const SizedBox(height: 40),
                ("" == "Manager")
                    ? CustomTextSignUpOrSignIn(
                        textone: "16".tr,
                        texttwo: "17".tr,
                        onTap: () {
                          controller.goToSignUp();
                        },
                      )
                    : Container()
              ]),
            ),
          )),
    );
  }
}
