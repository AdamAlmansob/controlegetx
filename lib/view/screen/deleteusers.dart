import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/delete_user/partoneofdelete.dart';
import 'package:controlgetx/view/widget/delete_user/prattwoofdelete.dart';
import 'package:flutter/material.dart';

class DeleteUsers extends StatelessWidget {
  const DeleteUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: const [
//  AppBar to HomePage
          PartOneOFPageDelete(),

          /////////////////////////////////////////////
          SizedBox(
            height: 5,
          ),

          //////////////////////////////////////////////////
//   Body to  HomePage

          PartTwoOfDeletPage(),
        ],
      ),
    );
  }
}
