import 'dart:math';

import 'package:ecity/views/screens/auth/auth_verify_code_screen.dart';
import 'package:ecity/views/screens/auth/widgets/custom_text_field.dart';
import 'package:ecity/views/screens/auth/widgets/phone_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/shapes.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';
import 'package:ecity/core/extensions/if_debugging.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthRegisterScreen extends StatefulWidget {
  static Route route({required String fcmToken}) {
    return MaterialPageRoute(
      builder: (context) => AuthRegisterScreen(fcmToken: fcmToken),
    );
  }

  final String fcmToken;

  const AuthRegisterScreen({
    super.key,
    required this.fcmToken,
  });

  @override
  State<AuthRegisterScreen> createState() => _AuthRegisterScreenState();
}

class _AuthRegisterScreenState extends State<AuthRegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController(
    text: "078417${1000 + Random().nextInt(9000)}".ifDebugging,
  );
  final TextEditingController _idController = TextEditingController(
    text: "12-222222Y22".ifDebugging,
  );
  final TextEditingController _phoneNumber =
      TextEditingController(text: "+263");

  bool hasAuthErrors = false;
  String errorMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
          child: ListView(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/di.png",
                  width: 150.w,
                  height: 150.h,
                ),
              ),
              CustomSpaces.verticalSpace(height: 30),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Details",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      CustomSpaces.verticalSpace(height: 15.h),
                      CustomTextField(
                        label: "National ID",
                        controller: _idController,
                      ),
                      CustomSpaces.verticalSpace(height: 30.h),
                      CustomPhoneTextField(
                        controller: _phoneController,
                        phoneNumber: _phoneNumber,
                      ),
                      CustomSpaces.verticalSpace(height: 30.h),
                      Text(
                        "We will send a text with a verification code. Message and data charges may apply.",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: const Color(0xFF828693)),
                      ),
                      CustomSpaces.verticalSpace(height: 30.h),
                      ButtonWidget(
                        label: "CONTINUE",
                        fontSize: 14,
                        buttonShape: CustomShapes.kPrimaryButtonRadius,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                AuthVerifyCodeScreen.route(
                                  phone: _phoneController.text,
                                  fcmToken: widget.fcmToken,
                                ));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
