import 'package:controlgetx/control/edituser_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustOfPartTwoEdit extends StatelessWidget {
  const CustOfPartTwoEdit({super.key});

  @override
  Widget build(BuildContext context) {
    EditUsersControllereImp controllerEdit = Get.put(EditUsersControllereImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 1.2;
    return GestureDetector(
        onTap: () {
          /*setState() {
					//data.isReaded != true;
					isPressed = !isPressed;
				}*/
          // new
          //controller.goToSecondePageMessage();
          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessageDetailPage(data: data)));
        },
        child: Container(
          height: height / 8,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
            // fromARGB(255, 170, 193, 233)
            color: AppColor.backgroundcolor, // blueAccent
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: height / 10,
                  width: width,
                  margin: const EdgeInsets.only(top: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        //padding: EdgeInsets.all(2),
                        flex: 1,
                        child: IconButton(
                          icon: const Icon(
                            Icons.edit,
                            color: AppColor.primaryColor,
                          ),
                          onPressed: () {
                            // controller.goToCreatePageMessage();
                            controllerEdit.goToEditSecond();
                            //Navigator.of(context).push(MaterialPageRoute( builder: (context) => CreatePost()));
                          },
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        //alignment: Alignment.center,
                        //padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "59".tr,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///
            ],
          ),
        ));
  }
}
