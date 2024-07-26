import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/model/new/servermessage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';

abstract class HomePageMessageController extends GetxController {
  _deletePost(String selectPostId);
  goToCreatePageMessage();
}

class HomePageMessageControllerImp extends HomePageMessageController {
  //late PageController pageController;
  List _posts = [];
  late TextEditingController username;
  late TextEditingController postTitleTD;
  late TextEditingController postTextTD;

  /*
 @override
  _getPosts() {
    return _getPostss();
  }

 */
  @override
  //get _getPosts => _getPostss();
  //get  _posts =>  _postss = [];
  /*
  @override
  void onInit() {
    _getPostss();
    super.onInit();
  }
  */
  @override
  void _createTable() {
    Services.createTable().then((result) {
      if ('success' == result) {
        if (kDebugMode) {
          print('success to create table');
        }
      } else {
        if (kDebugMode) {
          print('failed to create table');
        }
      }
    });
  }

  @override
  void addPost() {
    _createTable(); // _postTitleTD.text.isEmpty ||
    if (username.text.isEmpty || postTextTD.text.isEmpty) {
      if (kDebugMode) {
        print('Empty Field');
      }
      return;
    } else {
      Services.addPost(
              username.text,
              //_postTitleTD.text,
              postTextTD.text)
          .then((result) {
        if ('success' == result) {
          _clearTextInput();
          ScaffoldMessenger.of(context as BuildContext).showSnackBar(
            SnackBar(
              backgroundColor: Colors.blue,
              content: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.white),
                  Text(
                    'تم اضافة المراسلة',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }
      });
    }
  }

  @override
  _clearTextInput() {
    username.text = '';
    postTitleTD.text = '';
    postTextTD.text = '';
  }

  @override
  void onInit() {
    _getPostss();
    username = TextEditingController();
    postTitleTD = TextEditingController();
    postTextTD = TextEditingController();
    //phone = TextEditingController();
    //email = TextEditingController();
    //password = TextEditingController();
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
