import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class CustomTypography {
  static TextTheme textTheme = TextTheme(
    bodySmall: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: CustomColors.kMediumTextColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
      color: CustomColors.kLightTextColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(fontSize: 8.sp),
    labelMedium: TextStyle(fontSize: 10.sp),
    labelLarge: TextStyle(fontSize: 12.sp),
    displaySmall: TextStyle(fontSize: 14.sp),
    displayMedium: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: CustomColors.kBoldTextColor,
    ),
    headlineSmall: TextStyle(fontSize: 18.sp),
    headlineMedium: TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: 36.sp,
      color: CustomColors.kBoldTextColor,
    ),
  );
}
