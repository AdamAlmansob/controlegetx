// ignore_for_file: unused_local_variable

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartThreeOfHome extends StatelessWidget {
  const PartThreeOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 1.2,
      width: width,
      margin: const EdgeInsets.only(left: 10, right: 10),
      //margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      //	child: 	//List.generate(length, (index) => null),

      // يتم استدعاء الجسم مع شريط تمرير الاختيار
      //child: BodyResultTwo(),
    );
  }
}
