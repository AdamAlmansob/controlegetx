import 'package:controlgetx/view/widget/widget_edit/editpage/partoneofpageedit.dart';
import 'package:controlgetx/view/widget/widget_edit/editpage/parttwoofpageedit.dart';
import 'package:flutter/material.dart';

class EditUserPage extends StatelessWidget {
  const EditUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
//  AppBar to HomePage
          PartOneOfPageEdit(),

          /////////////////////////////////////////////
          SizedBox(
            height: 5,
          ),

          //////////////////////////////////////////////////
//   Body to  HomePage

          PartTwoOfPageEdit(),
        ],
      ),
    );
  }
}
