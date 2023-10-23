import "package:controlgetx/view/widget/message_widget/homemessage_widget/partfristmessage.dart";
import "package:controlgetx/view/widget/message_widget/homemessage_widget/partscoundmessage.dart";
import "package:flutter/material.dart";

class HomeMessage extends StatelessWidget {
  const HomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
//  AppBar to HomePage
          PartFristHomeMessage(),

          /////////////////////////////////////////////
          SizedBox(
            height: 5,
          ),

          //////////////////////////////////////////////////
//   Body to  HomePage

          PartScoundOfHomeMessage(),
        ],
      ),
    );
  }
}
