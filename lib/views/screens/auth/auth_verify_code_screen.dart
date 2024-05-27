import 'package:ecity/views/app/app_view.dart';
import 'package:ecity/views/screens/auth/widgets/custom_code_field.dart';
import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/shapes.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';

class AuthVerifyCodeScreen extends StatefulWidget {
  static Route route({
    required String phone,
    required String fcmToken,
  }) {
    return MaterialPageRoute(
      builder: (context) => AuthVerifyCodeScreen(
        phone: phone,
        fcmToken: fcmToken,
      ),
    );
  }

  final String phone;
  final String fcmToken;

  const AuthVerifyCodeScreen({
    super.key,
    required this.phone,
    required this.fcmToken,
  });

  @override
  State<AuthVerifyCodeScreen> createState() => _AuthVerifyCodeScreenState();
}

class _AuthVerifyCodeScreenState extends State<AuthVerifyCodeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: CustomColors.kIconColor,
                    ),
                  ),
                ],
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
                        "My code is",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: const Color(0xFF444142)),
                      ),
                      CustomSpaces.verticalSpace(height: 15),
                      Center(
                        child: CustomCodeField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Code is required';
                            }
                            if (value.length < 4) {
                              return 'Please enter a valid code';
                            }
                            return null;
                          },
                          controller: _codeController,
                        ),
                      ),
                      CustomSpaces.verticalSpace(height: 30),
                      Center(
                        child: Text(
                          "Didn't receive code?",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: const Color(0xFF828693)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Resent",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    color: CustomColors.kLinkTextColor),
                          ),
                        ),
                      ),
                      CustomSpaces.verticalSpace(height: 30),
                      ButtonWidget(
                        label: "CONTINUE",
                        fontSize: 14,
                        buttonShape: CustomShapes.kPrimaryButtonRadius,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, AppView.route());
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
