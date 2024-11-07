import 'package:at/navigations/screen_constants.dart';
import 'package:get/get.dart';

class AuthSuccessController extends GetxController{
  void navigateToDashBoard(){
    Get.toNamed(dashboard);
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3),()=>{
      navigateToDashBoard()
    });
  }
}