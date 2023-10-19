// ignore_for_file: unnecessary_import

//import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonTheme extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  final bool use;
  const CustomButtonTheme(
      {Key? key, required this.textbutton, this.onPressed, required this.use})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool usee = false;
    //var val;
    return InkWell(
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
              //usee = use;
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