import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessesScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const BusinessesScreen(),
    );
  }

  const BusinessesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        elevation: 0.5,
        iconTheme: IconThemeData(color: CustomColors.kIconColor),
        title: Text(
          "Businesses",
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
            SearchBox(
              onSubmitted: (value) {},
            ),
            CustomSpaces.verticalSpace(),
          ],
        ),
      ),
    );
  }
}
