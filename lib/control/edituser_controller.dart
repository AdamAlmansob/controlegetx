import 'dart:io';

import 'package:controlgetx/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
//  image_picker هذة المكتبة للصورة
//import 'package:image_picker/image_picker.dart';

abstract class EditUsersControllere extends GetxController {}

class EditUsersControllereImp extends EditUsersControllere {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  bool isload = true;
  var _formKey = GlobalKey<FormState>();

  //final picker = ImagePicker();

  //bool isload = true;
  DateTime _DateProdect = DateTime.now();
  TextEditingController txtcat_name = new TextEditingController();
  TextEditingController txtcat_name_en = new TextEditingController();

  Future<void> chooseDate(BuildContext context) async {
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

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  goToEditSecond() {
    Get.toNamed(AppRoute.editUserSecond);
  }
}
// سيتم حذفة عند توفر النت


