import 'package:controlgetx/view/widget/widget_edit/editpage/custofparttwoedit.dart';
import 'package:flutter/material.dart';

class PartTwoOfPageEdit extends StatelessWidget {
  const PartTwoOfPageEdit({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> users = ["adam", "ahmed"];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        height: height / 1.2,
        width: width,
        margin: const EdgeInsets.only(left: 10, right: 10),
        //margin: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        //	child: 	//List.generate(length, (index) => null),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: const [
            CustOfPartTwoEdit(),
            CustOfPartTwoEdit(),
          ],
        )
        // يتم استدعاء الجسم مع شريط تمرير الاختيار
        //child: BodyResultTwo(),
        );
  }
}
