// ignore_for_file: unused_local_variable

import 'package:controlgetx/control/messages/homepagemessage_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/functions/validinput.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:controlgetx/view/screen/new/edit_poste.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/control/messages/homepagemessage_controller.dart';
import 'package:flutter/rendering.dart';

class PartTwoCreateMessage extends StatefulWidget {
  const PartTwoCreateMessage({super.key});
  @override
  _PartTwoCreateMessageState createState() => _PartTwoCreateMessageState();
}

class _PartTwoCreateMessageState extends State<PartTwoCreateMessage> {
  //final TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    HomePageMessageControllerImp controllerHomMess =
        Get.put(HomePageMessageControllerImp());
    //final HomePageMessageControllerImp controllerhome = Get.find();
    //List _posts = [];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height / 1.2,
        width: width,
        margin: const EdgeInsets.only(left: 10, right: 10),
        //margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
        //padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        //	child: 	//List.generate(length, (index) => null),
        child: Center(
          child: SingleChildScrollView(
            //SingleChildScrollView =false

            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "57",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: height / 4,
                      width: width,
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      //margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: AppColor.backgroundcolor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          const SizedBox(height: 20),
                          CustomBottomText(
                            isNumber: false,
                            valid: (val) {
                              return validInput(val!, 3, 20, "username");
                            },
                            mycontroller: controllerHomMess.username,
                            hinttext: "23".tr,
                            iconData: Icons.person_outline,
                            labeltext: "20".tr,
                            // mycontroller: ,
                          ),
                          /*
                          TextFormField(
                            controller: _userNameTD,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                                hintText: " اسم المستخدم",
                                hintStyle: const TextStyle(fontSize: 10),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 30),
                                label: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 9),
                                    child: Text(' إدخل اسم المستخدم')),
                                //suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                          */
                          const SizedBox(height: 20),
                          
                           TextFormField(
                                                     controller: controllerHomMess.postTitleTD,
                                                     textAlign: TextAlign.end,
                                                     style: const TextStyle(
                            fontSize: 20,
                                                     ),
                                                     decoration: const InputDecoration(
                            hintText: 'العنوان',
                                                     ),
                                                   ),
                        
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: controllerHomMess.postTextTD,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: InputDecoration(
                                hintText: " النص",
                                hintStyle: const TextStyle(fontSize: 14),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 30),
                                label: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 9),
                                    child: Text('إدخل النص')),
                                //suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                          ),
                        ]),
                      ),
                    ),

                    const SizedBox(height: 20),

                    ///

                    ///
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      height: 40,
                      child: MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 0),
                          textColor: Colors.white,
                          onPressed: () {
                            // controller.next();
                            controllerHomMess.addPost();
                          },
                          color: AppColor.primaryColor,
                          child: Text("مراسلة")),
                    ),

                    /*
                     ElevatedButton(
                      onPressed: () {
                        _addPost();
                      },
                      child: const Text(
                        ' مراسلة',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    )

                    */
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
/*
CustomTextFormAuth(
                  isNumber: false,

                  valid: (val) {
                    return validInput(val!, 5, 100, "username");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "18".tr,
                  // mycontroller: ,
                ),
                */

class CustomBottomText extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomBottomText(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext!)),
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
