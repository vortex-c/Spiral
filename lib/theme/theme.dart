import 'package:at/theme/colors/AppColors.dart';
import 'package:flutter/material.dart';

final AppTheme = ThemeData(
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 26,
    )
  ),

  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  useMaterial3: true,
);