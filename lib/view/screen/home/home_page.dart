// ignore_for_file: prefer_const_constructors

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/view/screen/home/drower.dart';

import 'package:controlgetx/view/widget/home_widget/part_one/partoneofhome.dart';
import 'package:controlgetx/view/widget/home_widget/partthreeofhome.dart';
import 'package:controlgetx/view/widget/home_widget/part_two/parttwoofhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomepageControllerImp> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //HomepageControllerImp controller = Get.put(HomepageControllerImp());
    //double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    //bool isDrowerOpen = false;
    return Scaffold(
      drawer: const DrowerTwo2(),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
//  AppBar to HomePage
          PartOneOfHome(),

          /////////////////////////////////////////////
          SizedBox(
            height: 5,
          ),
          PartTwoOfHome(),
          //////////////////////////////////////////////////
//   Body to  HomePage
          SizedBox(
            height: 5,
          ),
          PartThreeOfHome(),
        ],
      ),
    );
  }
}

/*
bool isDrowerOpen = false;
void toggleDrower() {
		setState(() {
			isDrowerOpen = !isDrowerOpen;
		});
 */
