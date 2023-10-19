// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final Widget icon;
  final int value;
  final EdgeInsetsGeometry margin;
  final Function onTap;

  CustomIconButtonWidget(
      {super.key,
      required this.icon,
      required this.value,
      required this.margin,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controlleri = Get.put(HomepageControllerImp());
    return GestureDetector(
      onTap: () {
        //controlleri.goToFirestPageMessage();
        controlleri.goToFirestPageMessage();
      },
      //new
      //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagePage())),
      child: Container(
        width: 50,
        height: 50,
        margin: margin,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ////
            ///
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 3, 85, 110).withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: icon,
            ),

            //
            //
            //
            (value != 0)
                ? Container(
                    width: 16,
                    height: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.primaryColor,
                    ),
                    child: Text(
                      '$value',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
