import 'package:get/get_state_manager/src/simple/get_controllers.dart';

abstract class DeleteUserController extends GetxController {}

class DeleteUserControllerImp extends DeleteUserController {
  List<String> users = [
    "adam",
    "ahmed",
    "salam",
    "adham",
    "adham",
    "olla",
    "adham",
    "adham",
    "adham",
    "adham",
    "adham",
    "adham",
    "adham"
  ];
  @override
  funDeleteUser(int index) {
    users.removeAt(index);
  }
}
