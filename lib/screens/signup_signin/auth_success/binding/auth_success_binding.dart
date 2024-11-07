


import 'package:at/screens/signup_signin/auth_success/controller/auth_success_controller.dart';
import 'package:get/get.dart';

class AuthSuccessBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(AuthSuccessController());
  }

}