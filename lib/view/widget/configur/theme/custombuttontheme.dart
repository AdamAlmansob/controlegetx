// ignore_for_file: unnecessary_import

//import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/core/localization/changelocal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CustomButtonTheme extends StatelessWidget  {
  //final LocaleController controller = Get.put(LocaleController());
  final String textbutton;
  final void Function()? onPressed;
   bool use;
   final bool useT;
   CustomButtonTheme(
      {Key? key, required this.textbutton, this.onPressed, required this.use ,required this.useT
       })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool use = false;
    bool use2 = false;
    //var val;
    return InkWell(
      onTap: onPressed,
      //padding: const EdgeInsets.symmetric(horizontal: 100),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          //Obx(() => Checkbox(value: (textbutton=='42'.tr)?controller.isd.value:controller.isl.value, onChanged: ( newValue) {(textbutton=='42'.tr)?controller.isd.value =newValue!:controller.isl.value =newValue!;  },)),
           /*
            Checkbox(
            //isThreeLinr:true,
            //controlAffinity
            //tristate: true,
            //color: AppColor.primaryColor,
            //tileColor: Colors.white,
            //title: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
            value: use,
            onChanged: ( newValue) {

              //onPressed;
              use = controller.changeCheckbox(textbutton);
              if(use){
                useT=false;
              }
              /*
             setState:
              () {
                usee = use;
              };
              */
            },

            //textColor: Colors.white,
            //onPressed: onPressed,
            //child: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          
           */
          Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
/*
InkWell(
      onTap: onPressed,
      //padding: const EdgeInsets.symmetric(horizontal: 100),
      //width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            //isThreeLinr:true,
            //controlAffinity
            //tristate: true,
            //color: AppColor.primaryColor,
            //tileColor: Colors.white,
            //title: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
            value: use,
            onChanged: (val) {
              //onPressed;
              use = true;
            },

            //textColor: Colors.white,
            //onPressed: onPressed,
            //child: Text(textbutton,
            //    style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text(textbutton, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    )
*/

////////////////////
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


chek(String c){
  bool use=false;
  return Checkbox(value: (c=='42'.tr )?(true):use, onChanged: (newValue){setState(() {
      use=newValue!;
    });});
}

void setState( Function() param0) {
}