// ignore_for_file: unused_local_variable

import 'package:controlgetx/control/messages/homepagemessage_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:controlgetx/view/screen/new/edit_poste.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/control/messages/homepagemessage_controller.dart';

class PartTwoCreateMessage extends StatefulWidget {
  const PartTwoCreateMessage({super.key});
  @override
  _PartTwoCreateMessageState createState() => _PartTwoCreateMessageState();
}

class _PartTwoCreateMessageState extends State<PartTwoCreateMessage> {
  final TextEditingController _userNameTD = TextEditingController();
  final TextEditingController _postTitleTD = TextEditingController();
  final TextEditingController _postTextTD = TextEditingController();

  _clearTextInput() {
    _userNameTD.text = '';
    _postTitleTD.text = '';
    _postTextTD.text = '';
  }

  _createTable() {
    Services.createTable().then((result) {
      if ('success' == result) {
        if (kDebugMode) {
          print('success to create table');
        }
      } else {
        if (kDebugMode) {
          print('failed to create table');
        }
      }
    });
  }

  _addPost() {
    _createTable(); // _postTitleTD.text.isEmpty ||
    if (_userNameTD.text.isEmpty || _postTextTD.text.isEmpty) {
      if (kDebugMode) {
        print('Empty Field');
      }
      return;
    } else {
      Services.addPost(
              _userNameTD.text,
              //_postTitleTD.text,
              _postTextTD.text)
          .then((result) {
        if ('success' == result) {
          _clearTextInput();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.blue,
              content: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.white),
                  Text(
                    'تم اضافة المراسلة',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    HomePageMessageControllerImp controller =
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
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _userNameTD,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                            decoration: InputDecoration(
                                hintText: " اسم المستخدم",
                                hintStyle: const TextStyle(fontSize: 14),
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
                          const SizedBox(height: 20),
                          /*
                           TextField(
                          controller: _postTitleTD,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'العنوان',
                          ),
                        ),
                        */
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: _postTextTD,
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
                            _addPost();
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

