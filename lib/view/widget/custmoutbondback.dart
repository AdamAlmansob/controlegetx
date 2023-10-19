import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutBondBack extends StatelessWidget {
  const OutBondBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: IconButton(
          icon: const Icon(Icons.outbond),
          color: AppColor.primaryColor,
          onPressed: () {
            Get.back();
            // Navigator.pop(context);
          },
        ));
  }
}
