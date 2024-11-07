import 'package:at/screens/signup_signin/key_pass_auth/controller/key_pass_auth_controller.dart';
import 'package:get/get.dart';

class KeyPassAuthBinding implements Bindings {

  @override
  void dependencies() {
    Get.put(KeyPassAuthController());
  }
}
