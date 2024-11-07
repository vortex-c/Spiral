import 'package:at/navigations/screen_constants.dart';
import 'package:get/get.dart';

class KeyPassAuthController extends GetxController{
 void navigateToAuthSuccess(){
   Get.toNamed(auth_success);
 }

 @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 5),()=>{
     navigateToAuthSuccess()
    });
  }
}