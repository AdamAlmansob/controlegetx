// ignore_for_file: unused_local_variable

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/home_widget/part_two/customdotcontrollerparttwo.dart';
import 'package:controlgetx/view/widget/home_widget/part_two/customsliderParttwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartTwoOfHome extends StatelessWidget {
  const PartTwoOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 2.5,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: AppColor.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: CustomSliderPartTwo(),
          ),
          Expanded(
            flex: 1,
            child: CustomDotControllerPartTwo(),
          ),
        ],
      ),
    );
  }
}
