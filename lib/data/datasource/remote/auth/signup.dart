import 'package:controlgetx/core/class/crud.dart';
import 'package:controlgetx/linkapi.dart';
import 'package:get/get.dart';

class SignupData {
  //Get.put(Crud());
  //Get.lazyPut(()=>Crud());
  Crud crud;
  SignupData(this.crud);
  postdata(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLink.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
