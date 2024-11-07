import 'package:at/screens/signup_signin/signup/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUpBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> SignUpController());
  }

}