import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
//import 'package:get/get.dart';

abstract class HomePageMessageController extends GetxController {
  _deletePost(String selectPostId);
  goToCreatePageMessage();
}

class HomePageMessageControllerImp extends HomePageMessageController {
  //late PageController pageController;
  List _posts = [];
  /*
 @override
  _getPosts() {
    return _getPostss();
  }

 */
  @override
  //get _getPosts => _getPostss();
  //get  _posts =>  _postss = [];

  @override
  void onInit() {
    _getPostss();
    super.onInit();
  }
  // ignore: must_call_super

  /*
void initState() {
    _getPostss();
  }
  */

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
  goToCreatePageMessage() {
    Get.toNamed(AppRoute.createPost);
  }
}
