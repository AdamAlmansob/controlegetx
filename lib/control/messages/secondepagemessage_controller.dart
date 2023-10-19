import 'package:controlgetx/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SecondePageMessageController extends GetxController {
  goToFirestPageMessage();
}

class SecondePageMessageControllerImp extends SecondePageMessageController {
  @override
  goToFirestPageMessage() {
    Get.toNamed(AppRoute.firstPageMessage);
  }
}
