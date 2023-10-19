// ignore_for_file: unnecessary_import

import 'package:controlgetx/control/messages/firestpagemessage_controller.dart';
import 'package:controlgetx/view/widget/custmoutbondback.dart';
import 'package:controlgetx/view/widget/message_widget/firestmessage/messagetilewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FirestPageMessage extends GetView<FirestPageMessageControllerImp> {
  const FirestPageMessage({super.key});

  @override
  Widget build(BuildContext context) {
    FirestPageMessageControllerImp controller =
        Get.put(FirestPageMessageControllerImp());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,

        title: const Column(
          children: [
            //
            //
            Text('قائمة الرسائل ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600)),
            /* Text('1 Unreaded',
                style: TextStyle(
                    fontSize: 10, color: Colors.black.withOpacity(0.7)))*/
          ],
        ),
        //
        //left appbar
        leading: const OutBondBack(),
        /*IconButton(
              onPressed: () {
                //Navigator.of(context).pop();
              },
              // icon: SvgPicture.asset('assets/images/Arrow-left.svg'),
              icon: Icon(Icons.arrow_left),
            ),*/
        //

        actions: const [],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: List.generate(controller.listMessage.length, (index) {
          return MessageTileWidget(
            data: controller.listMessage[index],
          );
        }),
      ),
    );
  }
}


/*
// ignore_for_file: file_names, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketing_platform_new/mode/Api/massageSerice.dart';
import 'package:marketing_platform_new/mode/Model/Massage.dart';
import 'package:marketing_platform_new/view/widget/widgetMassageTile.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MessagePage extends StatefulWidget {
  MessagePage({super.key});

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  @override
  Widget build(BuildContext context) {
    return
  }
}

 */