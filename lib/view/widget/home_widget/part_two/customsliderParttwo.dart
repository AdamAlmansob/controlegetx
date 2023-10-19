// ignore_for_file: file_names

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderPartTwo extends StatelessWidget {
  const CustomSliderPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (valu) {
        controller.onPageChanged(valu);
      },
      itemCount: 5,
      itemBuilder: (context, index) => Container(
          //padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 10),
          //height: 200,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColor.grey,
          )),
    )
        //MenuOnBoarding(//product: product, //bodyResultData1[index],),

        ;
  }
}
