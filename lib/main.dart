import 'package:at/screens/dashboard/dashboard_screen.dart';
import 'package:at/screens/signup_signin/auth_success/auth_success_screen.dart';
import 'package:at/screens/signup_signin/auth_success/binding/auth_success_binding.dart';
import 'package:at/screens/signup_signin/key_pass_auth/binding/key_pass_auth_binding.dart';
import 'package:at/screens/signup_signin/key_pass_auth/key_pass_auth_screen.dart';
import 'package:at/screens/signup_signin/signup/binding/sign_up_bindings.dart';
import 'package:at/screens/signup_signin/signup/signup_screen.dart';
import 'package:at/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigations/screen_constants.dart';

void main() {
  runApp(GetMaterialApp(
    theme: AppTheme,
    title: "Spiral",
    initialRoute: signup,
    getPages: [
      GetPage(
          name: signup,
          page: () => const SignUpScreen(),
          binding: SignUpBindings()),
      GetPage(
          name: key_pass_auth,
          page: () => const KeyPassAuthScreen(),
          binding: KeyPassAuthBinding()),
      GetPage(
          name: auth_success,
          page: () => const AuthSuccessScreen(),
          binding: AuthSuccessBinding()),
      GetPage(name: dashboard, page: () => const DashboardScreen())
    ],
  ));
}
