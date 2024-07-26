//import 'package:controlgetx/core/constant/color.dart';
//import 'package:controlgetx/core/localization/changelocal.dart';
// ignore_for_file: unused_local_variable

import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';



class CustomButtonLang extends StatelessWidget {
  
  //final LocaleController controller = Get.put(LocaleController());
  final String textbutton;
  final void Function()? onPressed;
  //final void Function(bool v)? onChanged;
   CustomButtonLang({
    Key? key,
    required this.textbutton,
    this.onPressed,
    //this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isArabic = false;
    bool _isEnglish = false;
    //bool use = false;
    bool tristate = false;
    return InkWell(
      onTap: onPressed,
      //padding: const EdgeInsets.symmetric(horizontal: 100),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}




/*
Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(textbutton,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    )
*/
/////////////////////////
/*
InkWell(
      onTap: onPressed,
      //padding: const EdgeInsets.symmetric(horizontal: 100),
      //width: double.infinity,
      child: Row(
        children: [
          Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold)),
          Checkbox(
            //color: AppColor.primaryColor,
            //tileColor: Colors.white,
            //title: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
            value: use,
            onChanged: (val) {
              setState:
              (() {
                //use = onPressed as bool;
                onPressed;
              });
              //val =onPressed;
            },

            //textColor: Colors.white,
            //onPressed: onPressed,
            //child: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    )
*/