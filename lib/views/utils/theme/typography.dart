import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';

abstract class CustomTypography {
  static TextTheme textTheme = TextTheme(
    bodySmall: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: CustomColors.kMediumTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      color: CustomColors.kLightTextColor,
    ),
    bodyLarge: const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: const TextStyle(fontSize: 8),
    labelMedium: const TextStyle(fontSize: 10),
    labelLarge: const TextStyle(fontSize: 12),
    displaySmall: const TextStyle(fontSize: 16),
    displayMedium: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: CustomColors.kBoldTextColor,
    ),
  );
}
