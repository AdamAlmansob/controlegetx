// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:controlgetx/control/configure_app_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/configur/custombuttonconfigure.dart';
//import 'package:controlgetx/view/widget/auth/custombuttonauth.dart';
import 'package:controlgetx/view/widget/configur/language/language_app%20.dart';
import 'package:controlgetx/view/widget/configur/powers/powers_app.dart';
import 'package:controlgetx/view/widget/configur/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigureApplication extends StatelessWidget {
  const ConfigureApplication({super.key});

  @override
  Widget build(BuildContext context) {
    ConfigureappControllerImp controller = Get.put(ConfigureappControllerImp());
    return Scaffold(
      //appBar:

      /*
       MainAppBar(
        cartValue: 2,
        chatValue: 2,
      ),
       */

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // Section 1 - Profile Picture - Username - Name
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  '', // '${widget.numImage}'
                ), //assets/images/background.jpg
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Container(
                child: Row(children: [
                  /*

                  Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: Icon(Icons.outbond),
                        color: Colors.orange,
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                      )),

                  */
                  Expanded(
                      flex: 1,
                      child: IconButton(
                        icon: const Icon(Icons.save_as),
                        color: AppColor.primaryColor,
                        onPressed: () {
                          controller.next();
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdamPage()));
                        },
                      )), // Icon(Icons.save)
                ]),
              ),

              const CustomButtonConfigure(),

              // Profile Picture

              Container(
                height: 900,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LanguageApp(),
                    ThemeApp(),
                    PowersApp(),
                  ],
                ),
              ),
            ]),
            //////
            ///
            // Section 2 - Account Menu
          ),
        ],
      ),
    );
  }
}
