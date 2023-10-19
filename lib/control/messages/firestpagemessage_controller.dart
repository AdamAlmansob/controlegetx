import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/core/services/message_services.dart';
import 'package:controlgetx/model/message.dart';
import 'package:get/get.dart';

abstract class FirestPageMessageController extends GetxController{
  goToSecondePageMessage();

}

class FirestPageMessageControllerImp extends FirestPageMessageController{

  // محلي Service
  List<Message> listMessage = MessageService.messageData;
  @override
  goToSecondePageMessage() {
    Get.toNamed(AppRoute.secondePageMessage);
  }

}