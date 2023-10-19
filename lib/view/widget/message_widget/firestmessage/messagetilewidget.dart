// ignore_for_file: file_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_element, prefer_const_constructors, unnecessary_string_interpolations, must_be_immutable

import 'package:controlgetx/control/messages/firestpagemessage_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageTileWidget extends StatelessWidget {
  final Message data;

  MessageTileWidget({
    required this.data,
  });
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    FirestPageMessageControllerImp controller =
        Get.put(FirestPageMessageControllerImp());
    return GestureDetector(
      onTap: () {
        /*setState() {
					//data.isReaded != true;
					isPressed = !isPressed;
				}*/
        controller.goToSecondePageMessage();
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageDetailPage(data: data)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: (data.isReaded == true) ? Colors.white : AppColor.primaryColor,
          //isPressed ?  Colors.white : Colors.orange,
          border: Border(bottom: BorderSide(color: AppColor.grey, width: 1)),
        ),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColor.grey,

                /*
                image: DecorationImage(
                  image: AssetImage('{widget.numImage}'), //assets/images/pp.jpg
                  fit: BoxFit.cover,
                ),
                */
              ),
              child: Icon(Icons.person),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 3,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${data.shopName}',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w500)),
                  //SizedBox(height: 2),
                  Text('${data.message.substring(0, 15)}', //
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7), fontSize: 12)),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text('${data.isReaded}'),

                    SizedBox(
                      width: 5,
                    ),
                    ///////////////////

                    Icon(
                      data.isReaded ? Icons.circle : Icons.circle,
                      color: (!isPressed) //(data.isReaded == true || isPressed)
                          ? AppColor.primaryColor
                          : Colors.white,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
