import 'package:controlgetx/control/settings_controller.dart';
import 'package:controlgetx/view/widget/setting_widget/custmeditimagebuttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class AddImageSetting extends StatelessWidget {
  const AddImageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsControllerImp controlSetting = Get.put(SettingsControllerImp());
    return InkWell(
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
    );
  }
}
