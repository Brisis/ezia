import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigitalIdScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const DigitalIdScreen(),
    );
  }

  const DigitalIdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        elevation: 0.5,
        iconTheme: IconThemeData(color: CustomColors.kIconColor),
        title: Text(
          "Digital Identity",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: CustomColors.kBoldTextColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.h),
        child: ListView(
          children: [
            Image.asset("assets/images/qr.png"),
            CustomSpaces.verticalSpace(),
            ButtonWidget(
              label: "Download",
              fontSize: 14.sp,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
