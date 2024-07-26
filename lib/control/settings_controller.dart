// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'dart:io';

import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/core/functions/alertexitapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:images_picker/images_picker.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:image_picker/image_picker.dart';

abstract class SettingsController extends GetxController {}

class SettingsControllerImp extends SettingsController {
  File? _image;
  bool isload = true;
  var _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  bool image_icon = true;
  //bool isload = true;
  DateTime _DateProdect = DateTime.now();
  
  //get source => null;

  // هذا بيتم ايضا حذفة
  //get picker => null;

  Future<void> chooseDate(BuildContext context) async {
    var source;
    final pickedFile = await ImagePicker().pickImage(source: source);
    final DateTime? picked = await showDatePicker(
        context: context,
        selectableDayPredicate: (dateTime) {
          if (dateTime.day == 10) {
            return false;
          }
          return true;
        },
        initialDatePickerMode: DatePickerMode.day,
        initialDate: _DateProdect,
        firstDate: DateTime(2015, 12),
        lastDate: DateTime(2028, 12));

    if (picked != null && picked != _DateProdect) {
      _DateProdect = picked;
    }

    if (picked == null) {
      _DateProdect = DateTime.now();
    }
  }

  Future getImageGallery() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    //setState(() {
    if (image != null) {
      //setState(() {
      isload = false;
      //});
    } else {
      print('اختر الصورة الافضل اليك');
    }
    //});
  }

/*
  Future getImage() async {
    List res = await ImagesPicker.pick(
      count: 3,
      pickType: PickType.image,
    );
  }
*/
  Future getImageCamera() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    //setState(() {
    if (image != null) {

      ///setState(() {
      isload = false;
      // });
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
              ListTile(
                leading: Icon(Icons.image),
                title: Text("معرض الصور"),
                onTap: () {
                  getImageGallery();
                },
                focusColor: Colors.red,
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("كاميرا"),
                onTap: () {
                  getImageCamera();
                },
              ),
            ],
          ));
        });
  }

  goToAddAds() {
    Get.toNamed(AppRoute.addAds);
  }

  goToAddImageAds() {
    Get.toNamed(AppRoute.addImageAds);
  }

  goToOutSide() {
    //Get.toNamed(AppRoute.alertExitApp );
    //alertExitApp;
  }
}

/*
class ImageSource {
  static var camera;

  static var gallery;
}

class ImagePicker {
  pickImage({required source}) {}
}

*/

// سيتم حذفة عند توفر النت


