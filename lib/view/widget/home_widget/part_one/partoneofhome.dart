import 'package:controlgetx/control/home_page_controller.dart';
import 'package:controlgetx/core/constant/color.dart';
import 'package:controlgetx/view/widget/home_widget/part_one/customiconbuttonwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PartOneOfHome extends StatelessWidget {
  const PartOneOfHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageControllerImp controller = Get.put(HomepageControllerImp());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 5,
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        // fromARGB(255, 170, 193, 233)
        color: AppColor.primary, // blueAccent
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
                      icon: const Icon(Icons.list),
                      onPressed: () {
                        controller.goToDrawer();

                        // Navigator.of(context).push(MaterialPageRoute( builder: (context) => DrowerTwo()));
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    //alignment: Alignment.center,
                    //padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "48".tr,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToFirestPageMessage();
                      // new
                      //Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagePage()));
                    },
                    child: CustomIconButtonWidget(
                      onTap: () {
                        controller.goToFirestPageMessage();
                        // Navigator.of(context).push(MaterialPageRoute(   builder: (context) => MessagePage()));
                      },
                      value: 2,
                      margin: const EdgeInsets.only(left: 12),
                      icon:
                          /*
                              SvgPicture.asset(
                              'assets/icons/Chat.svg',
                              color: Colors.deepOrange,
                                                    ),
                               */
                          const Icon(Icons.chat),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///

          /*
								Container(
									//height: height/9,
									width: width,
									//child: SearchWidget1(),,
									child: OutlinedButton(
										onPressed: () {
											// setStshowSearchate(() {   (  context: context, delegate: DataSearch());  });
											Navigator.of(context).push(
												MaterialPageRoute(
													builder: (context) => SearchPage(),
												),
											);
										},
										child: Text(
											" البحث في المنصة",
											style: TextStyle(color: Colors.black),
										),
									),
								),
								 */
        ],
      ),
    );
  }
}
