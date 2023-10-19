import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import '../data/datasource/static/static.dart';

abstract class ConfigureappController extends GetxController {
  next();
  onPageChanged(int index);
}

class ConfigureappControllerImp extends ConfigureappController {
  late PageController pageController;

  int currentPage = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    //currentPage++;

    //if (currentPage > onBoardingList.length - 1) {
    myServices.sharedPreferences.setString("configureapplication", "1");
    Get.offAllNamed(AppRoute.login);
    //} else {
    //  pageController.animateToPage(currentPage,
    //     duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    //}
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
