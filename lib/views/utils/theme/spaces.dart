import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class CustomSpaces {
  static SizedBox verticalSpace({double height = 8.0}) {
    return SizedBox(height: height.h);
  }

  static SizedBox horizontalSpace({double width = 8.0}) {
    return SizedBox(width: width.w);
  }
}
