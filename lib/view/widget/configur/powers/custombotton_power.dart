import 'package:controlgetx/core/localization/change_local_pow.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonPowers extends StatelessWidget {
  final String textbutton;
  final void Function(bool c)? onPressed;
  //late final bool use;
  //final void Function(bool v)? onChanged;
  const CustomButtonPowers({
    Key? key,
    required this.textbutton,
    this.onPressed,
    //required this.use,
    //this.onChanged,
  }) : super(key: key);

  //get ch => null;

  //bool get ch => ;

  @override
  Widget build(BuildContext context) {
    bool use = false;
    bool useT = false;
    Get.put(LocaleControllerPowers());
    //bool tristate = false;
    return InkWell(
      onTap: onPressed.obs,
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