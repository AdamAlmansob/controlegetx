// ignore_for_file: must_be_immutable, unused_field, unused_local_variable, file_names, prefer_final_fields, avoid_print, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, unused_element, non_constant_identifier_names

import 'dart:io';

import 'package:controlgetx/control/edituser_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
// بيتم تحديثها
//import 'package:image_picker/image_picker.dart';

class CustomEditImageButtom extends StatelessWidget {
  final Widget image;
  final int value;
  final EdgeInsetsGeometry margin;
  final Function onTap;

  CustomEditImageButtom(
      {super.key,
      required this.image,
      required this.value,
      required this.margin,
      required this.onTap});
  bool isload = true;
  var _formKey = GlobalKey<FormState>();
  late File _image;
  // هذا بيتم حذفة عند تحديث النت
  get picker => null;
  //final picker = ImagePicker();

  /*
  Future getImageGallery() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    // setState(() {
    if (image != null) {
      _image = File(image.path);
      // setState(() {
      isload = false;
      // });
    } else {
      print('اختر الصورة الافضل اليك');
    }
    // });
  }
  
  Future getImageCamera() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    //setState(() {
    if (image != null) {
      _image = File(image.path);
      // setState(() {
      isload = false;
      //  });
    } else {
      print('No image selected.');
    }
    //});
  }
  
  void showSheetGallery(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              child: Wrap(
            children: [
              new ListTile(
                leading: new Icon(Icons.image),
                title: new Text("معرض الصور"),
                onTap: () {
                  getImageGallery();
                },
                focusColor: Colors.red,
              ),
              new ListTile(
                leading: new Icon(Icons.camera),
                title: new Text("كاميرا"),
                onTap: () {
                  getImageCamera();
                },
              ),
            ],
          ));
        });
  }

  */

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        // Navigator.of(context) .push(MaterialPageRoute(builder: (context) => EditProdects(  )));
      },
      child: Container(
        // width: 50,
        //height: 50,
        width: width * 0.45,
        height: height * 0.20,
        margin: margin,
        child: Stack(
          alignment: Alignment.bottomLeft, //  topRight
          children: [
            ////
            ///
            Container(
              width: width * 0.40,
              //height: height * 0.40,
              //width: 40,
              //height: 40,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              alignment: Alignment.center,
              child: image,
            ),

            //
            //
            //
            (value != 0)
                ? Container(
                    width: width * .10,
                    height: height * .05,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 76, 77, 45).withOpacity(0.5),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.camera_enhance),
                      color: AppColor.primaryColor,
                      onPressed: () {
                        //setState() {
                        var image_icon = false;
                        //}

                        //showSheetGallery(context);
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AdamPage()));
                      },
                    ), //  camera_front
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
