import 'package:controlgetx/control/messages/createpagemessage_controller.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:controlgetx/view/widget/message_widget/createmessage/partonecreate.dart';
import 'package:controlgetx/view/widget/message_widget/createmessage/parttwocreate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// This project by Salar Brefki
//برمجة وتطوير سالار بريفكي
// YouTube: https://www.youtube.com/channel/UCphD-Ww9JnrBXRfzy6Ivg0g
// Facebook: https://www.facebook.com/salar.brefki
//Instagram: https://www.instagram.com/salarbrefki

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    CreateMessageControllerImp controllerImp =
        Get.put(CreateMessageControllerImp());
    return const Scaffold(
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        PartOneCreateMessage(),
        SizedBox(
          height: 15,
        ),
        PartTwoCreateMessage(),
      ]),
    );
  }
}
