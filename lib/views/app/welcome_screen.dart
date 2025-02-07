import 'package:ecity/views/screens/auth/auth_register_screen.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                height: MediaQuery.of(context).size.height * .55,
                decoration: BoxDecoration(
                  color: CustomColors.kBackgroundColor,
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/coat.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.green,
                      const Color(0xFFD4AF37),
                      Colors.redAccent,
                      Colors.black.withOpacity(0.7),
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/di.png",
                      width: 80.w,
                      height: 80.h,
                    ),
                  ),
                  CustomSpaces.verticalSpace(),
                  Text(
                    "Electronic Zimbabwean Access",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          color: CustomColors.kBoldTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  CustomSpaces.verticalSpace(height: 30),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.push(context,
                          AuthRegisterScreen.route(fcmToken: "not available"));
                    },
                    label: "GET STARTED",
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
