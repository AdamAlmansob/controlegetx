import 'package:controlgetx/control/settings_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:controlgetx/view/widget/setting_widget/custmeditimagebuttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAds extends StatelessWidget {
  const AddAds({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controlSetting = Get.put(SettingsControllerImp());
    double width = MediaQuery.of(context).size.width;

    double height = MediaQuery.of(context).size.height;
    const margin = EdgeInsets.only(left: 30, right: 30);
    return Scaffold(
      //appBar:

      /*
       MainAppBar(
        cartValue: 2,
        chatValue: 2,
      ),
       */

      body: Container(
        height: height,
        decoration: const BoxDecoration(
            //color: Colors.blueAccent,
            ),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            // Section 1 - Profile Picture - Username - Name
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  Container(
                    child: Row(children: [
                      const OutBondBack(),
                      Expanded(
                          flex: 1,
                          child: IconButton(
                            icon: const Icon(Icons.save_as),
                            color: AppColor.primaryColor,
                            onPressed: () async {
                              // await saveData(context);
                            },
                          )), // Icon(Icons.save)
                    ]),
                  ),
                  InkWell(
                    onTap: () {
                      //  Navigator.of(context).push(MaterialPageRoute(  builder: (context) => MessagePage()));
                    },
                    child: CustomEditImageButtom(
                      onTap: () {
                        //setState() {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagePage())),
                        //}
                      },
                      value: 2, //showSheetGallery(context) as int,
                      margin: const EdgeInsets.all(0), //  left: 12
                      image: IconButton(
                        icon: const CircleAvatar(
                          //backgroundImage: AssetImage(widget.exportImage),
                          radius: 140,
                        ),
                        onPressed: () {
                          //setState(() {
                          // var image_icon = false;
                          //});
                          controlSetting.showSheetGallery(context);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //////
            ///
            // Section 2 - Account Menu
            Container(
              // width: MediaQuery.of(context).size.width,
              //margin: EdgeInsets.only(top: 24),
              margin: margin,
              decoration: const BoxDecoration(
                  //color: Colors.blueAccent,
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //
                  TextFormField(
                    autofocus: false,
                    //initialValue: '  اسم منتج الإعلان',
                    keyboardType: TextInputType.name,
                    maxLength: 20,
                    decoration: InputDecoration(
                      hintText: '  اسم منتج الإعلان',
                      icon: const Icon(Icons.add),
                      iconColor: AppColor.primaryColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 90), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.primaryColor, width: 4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //
                  //
                  TextFormField(
                    onTap: () {
                      controlSetting.chooseDate(context);
                      print('$context');
                    },
                    autofocus: false,
                    //initialValue: ' تاريخ الإنتهاء ',
                    keyboardType: TextInputType.datetime,
                    maxLength: 20,
                    decoration: InputDecoration(
                      hintText: ' تاريخ الإنتهاء ',
                      icon: const Icon(Icons.add),
                      iconColor: AppColor.primaryColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 90), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.primaryColor, width: 4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: Colors.grey.withOpacity(0.3),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //
                  TextFormField(
                    onTap: () {
                      controlSetting.chooseDate(context);
                      print('$context');
                    },
                    autofocus: false,
                    //initialValue: 'تاريخ البداء   ',
                    keyboardType: TextInputType.datetime,
                    maxLength: 20,
                    decoration: InputDecoration(
                      hintText: 'تاريخ البداء   ',
                      icon: const Icon(Icons.add),
                      iconColor: AppColor.primaryColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 90), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.primaryColor, width: 4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: AppColor.grey.withOpacity(0.3),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 10),
                  //
                  TextFormField(
                    autofocus: false,
                    //initialValue: 'بيانات   ',
                    keyboardType: TextInputType.text,
                    maxLength: 200,
                    decoration: InputDecoration(
                      hintText: 'بيانات   ',
                      icon: const Icon(Icons.add),
                      iconColor: AppColor.primaryColor,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 0, 0, 90), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: AppColor.primaryColor, width: 4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fillColor: AppColor.grey.withOpacity(0.3),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 16),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
