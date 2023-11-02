import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:controlgetx/view/widget/configur/language/language_app%20.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefinitionAboutPlatform extends StatelessWidget {
  const DefinitionAboutPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: SingleChildScrollView(
        //SingleChildScrollView =false

        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Container(
                  height: height / 2,
                  width: width,
                  //margin: const EdgeInsets.only(left: 10, right: 10),
                  //margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: AppColor.backgroundcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(height: 90),
                      Text(
                        "    Programming  ",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "  Engineer/ Adam Almansob  ",
                        style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Computer science bathch 18  ",
                        //: "",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        " Developer Technique ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email :",
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "adamabdulrahmanahmed@gmail.com",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                  ),
                ),

                ///

                ///
              ],
            ),
          ),
        ),
      ),
    );
  }
}
