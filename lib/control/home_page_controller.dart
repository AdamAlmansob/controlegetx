import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomepageController extends GetxController {
  goToDrawer();
  next();
  onPageChanged(int index);
  goToFirestPageMessage();

}

class HomepageControllerImp extends HomepageController {
  // login
  //GlobalKey<FormState> formstate = GlobalKey<FormState>();

  //late TextEditingController email;
  //late TextEditingController password;

  //bool isshowpassword = true;

  /*showPassword() {
		isshowpassword = isshowpassword == true ? false : true;
		update();
	}*/

  // onboarding
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
// login
  /*@override
	void dispose() {
		//email.dispose();
		//password.dispose();
		super.dispose();
	}*/

  @override
  goToDrawer() {
    Get.toNamed(AppRoute.drawePage);
  }

  @override
  next() {
    currentPage++;
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);

    /*if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }*/
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  goToFirestPageMessage() {
    Get.toNamed(AppRoute.firstPageMessage);
  }
}
