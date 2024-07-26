import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:controlgetx/control/deleteuser_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartOneOFPageDelete extends GetView<DeleteUserController> {
  const PartOneOFPageDelete({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 8,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        // fromARGB(255, 170, 193, 233)
        color: AppColor.primary, // blueAccent
        borderRadius: BorderRadius.circular(20),
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
                      "58".tr,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    //padding: EdgeInsets.all(2),
                    flex: 1,
                    child: IconButton(
                      icon: const Icon(
                        Icons.refresh,
                        color: AppColor.primaryColor,
                      ),
                      onPressed: () {
                        //controller.funDeleteUser(index);
                        //controller._getPosts();
                        //_getPosts();

                        // Navigator.of(context).push(MaterialPageRoute( builder: (context) => DrowerTwo()));
                      },
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
