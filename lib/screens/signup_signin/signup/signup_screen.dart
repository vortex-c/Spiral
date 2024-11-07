import 'package:at/screens/signup_signin/base/base_signup_signin.dart';
import 'package:at/screens/signup_signin/signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors/AppColors.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signupController = Get.find<SignUpController>();

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
                "Login",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 20),
              ),
            ),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 10),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: signupController.emailTextController,
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  filled: true,
                  fillColor: AppColors.onPrimary,
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 10,
                    color: AppColors.placeHolder,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide:
                          BorderSide(color: AppColors.placeHolder, width: 1))),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: TextStyle(color: AppColors.onPrimary, fontSize: 10),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: signupController.passwordTextController,
              decoration: const InputDecoration(
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  filled: true,
                  fillColor: AppColors.onPrimary,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 10,
                    color: AppColors.placeHolder,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide:
                          BorderSide(color: AppColors.placeHolder, width: 1))),
            ),
            const SizedBox(height: 24),
            FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: AppColors.onPrimary,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () => {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 13,
                          color: AppColors.onPrimary,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )),
            const SizedBox(height: 24),
            const Text("or choose",
                style: TextStyle(fontSize: 10, color: AppColors.onPrimary)),
            const SizedBox(height: 24),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.onPrimary,
                foregroundColor: AppColors.primaryColor,
                alignment: Alignment.center,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () => {
                signupController.navigateToKeyPassAuthScreen()
              },
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/finger_print.png")),
                    SizedBox(width: 8),
                    Text(
                      "Sign in with Passkey",
                      style: TextStyle(
                          fontSize: 13, color: AppColors.primaryColor),
                    )
                  ]),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.onPrimary,
                      foregroundColor: AppColors.primaryColor,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () => {},
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              width: 15,
                              height: 15,
                              image: AssetImage("assets/icon_google.png")),
                        ]),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.onPrimary,
                      foregroundColor: AppColors.primaryColor,
                      alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onPressed: () => {},
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                              width: 15,
                              height: 15,
                              image: AssetImage("assets/icon_github.png")),
                        ]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account yet? ",
                  style: TextStyle(fontSize: 8, color: AppColors.onPrimary),
                ),
                Text(
                  "Register for free",
                  style: TextStyle(fontSize: 8, color: AppColors.tertiaryColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
