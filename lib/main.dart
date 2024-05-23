import 'package:ecity/views/app/welcome_screen.dart';
import 'package:ecity/views/utils/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'e-ZiA',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            textTheme: GoogleFonts.openSansTextTheme(
              CustomTypography.textTheme.apply(fontSizeFactor: 1.0.sp),
            ),
          ),
          home: child,
        );
      },
      child: const WelcomeScreen(),
    );
  }
}
