import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const primaryColor = Color(0xFF003465);
  static const secondaryColor = Color(0xFF0085FF);
  static const borderColor = Color(0x5882C147);
}

class AppGradients {
  static const signUpBg = RadialGradient(
      colors: [AppColors.secondaryColor, AppColors.primaryColor],
      radius: 0.6,
      center: Alignment.center,
      focalRadius: 0.1
  );
}
