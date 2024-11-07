import 'package:at/navigations/screen_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  var email = "".obs;
  var password = "".obs;

  void navigateToKeyPassAuthScreen() {
    Get.toNamed(key_pass_auth);
  }

  @override
  void onInit() {
    super.onInit();
    emailTextController.addListener(() {
      email.value = emailTextController.text;
    });
    passwordTextController.addListener(() {
      password.value = passwordTextController.text;
    });
  }

  @override
  void onClose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.onClose();
  }
}
