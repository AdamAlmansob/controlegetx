import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartOnOfSettingPage extends StatelessWidget {
  const PartOnOfSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 9.7,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
      decoration: BoxDecoration(
        // fromARGB(255, 170, 193, 233)
        color: AppColor.primary, // blueAccent
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: height / 10,
              width: width,
              margin: const EdgeInsets.only(top: 1),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const OutBondBack(),
                  Expanded(
                    flex: 2,
                    //alignment: Alignment.center,
                    //padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "60".tr,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///
        ],
      ),
    );
  }
}
