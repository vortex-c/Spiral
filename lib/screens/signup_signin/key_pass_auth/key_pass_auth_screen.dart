import 'package:at/screens/signup_signin/base/base_signup_signin.dart';
import 'package:at/screens/signup_signin/key_pass_auth/controller/key_pass_auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../theme/colors/AppColors.dart';

class KeyPassAuthScreen extends StatelessWidget {
  const KeyPassAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final keyPassAuthController = Get.find<KeyPassAuthController>();

    return BaseSignupSignIn(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Spiral",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 26),
              ),
            ),
            const SizedBox(height: 36),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Passkey Sign in",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 16),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Place your finger on the sensor to continue",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 10),
              ),
            ),
            const SizedBox(height: 36),
            const Align(
              alignment: Alignment.center,
              child: Image(
                  width: 175,
                  height: 175,
                  image: AssetImage("assets/keypass_scan.png")),
            ),
            const SizedBox(height: 36),
            FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.onPrimary,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () => {
                  Get.back()
            },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cancel",
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColors.onPrimary,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
