// ignore_for_file: unused_local_variable

import 'package:controlgetx/control/messages/homepagemessage_controller.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:controlgetx/view/screen/new/edit_poste.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/control/messages/homepagemessage_controller.dart';

class PartScoundOfHomeMessage extends GetView<HomePageMessageControllerImp> {
  const PartScoundOfHomeMessage({super.key});

  static List _posts = [];
  Future<void> _getPostss() async {
    Services.getAllPosts().then((posts) {
      _posts = posts;

      if (kDebugMode) {
        print('Length: ${_posts.length}');
      }
    });
  }

  _deletePost(String selectPostId) {
    Services.deletePost(selectPostId).then((result) {
      if ('success' == result) {
        _getPostss();
        if (kDebugMode) {
          print('Delete done');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    HomePageMessageControllerImp controller =
        Get.put(HomePageMessageControllerImp());
    //final HomePageMessageControllerImp controllerhome = Get.find();
    //List _posts = [];
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
        child: _posts.isEmpty
            ? const Center(
                child: Text(
                  "56",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            : RefreshIndicator(
                onRefresh: _getPostss,
                //pageController . _getPosts,
                backgroundColor: Colors.blue,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffEBEBEB),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.blue, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.delete,
                                              size: 20,
                                            ),
                                            color: Colors.red,
                                            onPressed: () {
                                              _deletePost(_posts[index].id);
                                            },
                                          ),
                                          IconButton(
                                            icon: const Icon(
                                              Icons.edit,
                                              size: 20,
                                            ),
                                            color: Colors.blue,
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditPost(
                                                          postId:
                                                              _posts[index].id,
                                                          username:
                                                              _posts[index]
                                                                  .username,
                                                          // postTitle:_posts[index].postTitle,
                                                          postText:
                                                              _posts[index]
                                                                  .postText,
                                                        )),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${_posts[index].username}',
                                            //"",
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.person,
                                            size: 35,
                                            color: Colors.blue,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  /*
                                    Text(
                                    //'${_posts[index].postTitle}',
                                    "",
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  
                                  */
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SelectableText(
                                    '${_posts[index].postText}',
                                    //"",
                                    textAlign: TextAlign.end,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    }))
        // يتم استدعاء الجسم مع شريط تمرير الاختيار
        //child: BodyResultTwo(),

        );
  }
}
