import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/setting_widget/addimageofsetting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddImageAds extends StatelessWidget {
  const AddImageAds({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
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
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const SingleChildScrollView(
                      child: Column(children: [
                        SizedBox(height: 30),
                        AddImageSetting(),
                        CustomBottomSave()
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
      ),
    );
  }
}

class CustomBottomSave extends StatelessWidget {
  const CustomBottomSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 140),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            //controller.next();
          },
          color: AppColor.primaryColor,
          child: Text("8".tr)),
    );
  }
}
