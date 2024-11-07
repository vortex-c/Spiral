import 'package:at/screens/signup_signin/auth_success/controller/auth_success_controller.dart';
import 'package:at/screens/signup_signin/base/base_signup_signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/colors/AppColors.dart';

class AuthSuccessScreen extends StatelessWidget {
  const AuthSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final authSuccessController = Get.find<AuthSuccessController>();

    return const BaseSignupSignIn(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Spiral",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 26),
              ),
            ),
            SizedBox(height: 36),
            Image(
                width: 113,
                height: 113,
                image: AssetImage("assets/auth_success_check.png")),
            SizedBox(height: 36),
            Text(
              "Authentication Successful",
              style: TextStyle(
                fontSize: 21,
                color: AppColors.onPrimary,
              ),
            ),
            SizedBox(height: 36),
            SizedBox(height: 24),
            Text(
              "Redirecting you to your account",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.onPrimary,
              ),
            ),
            SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
