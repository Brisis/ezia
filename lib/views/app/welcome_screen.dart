import 'package:ecity/views/app/app_view.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
                      // CustomColors.kDarkSurfaceColor.withOpacity(0.0),
                      // CustomColors.kDarkSurfaceColor.withOpacity(0.3),
                      // CustomColors.kDarkSurfaceColor.withOpacity(0.5),
                      // CustomColors.kDarkSurfaceColor.withOpacity(0.8),
                      // CustomColors.kDarkSurfaceColor,
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "Together we can make a better Zimbabwe",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: CustomColors.kBoldTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  CustomSpaces.verticalSpace(height: 30),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.push(context, AppView.route());
                    },
                    label: "Get Started",
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
