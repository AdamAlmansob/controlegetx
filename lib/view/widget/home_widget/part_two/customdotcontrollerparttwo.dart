import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerPartTwo extends StatelessWidget {
  const CustomDotControllerPartTwo({super.key});

  @override
  Widget build(BuildContext context) {
    //HomepageControllerImp controller = Get.put(HomepageControllerImp());
    return GetBuilder<HomepageControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    5, //onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            ));
  }
}
