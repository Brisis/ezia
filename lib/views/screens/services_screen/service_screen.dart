import 'package:ecity/views/screens/services_screen/widgets/transaction_card.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const ServiceScreen(),
    );
  }

  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        iconTheme: IconThemeData(color: CustomColors.kIconColor),
        elevation: 0.5,
        title: Text(
          "ZETDC",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: CustomColors.kBoldTextColor,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.map,
              color: CustomColors.kIconColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150.h,
            decoration: BoxDecoration(
              color: CustomColors.kContainerBackgroundColor,
              image: DecorationImage(
                image: const AssetImage("assets/images/zsa.webp"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  CustomColors.kDarkSurfaceColor.withOpacity(0.7),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "Zimbabwe Electricity Transmission and Distribution Company",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: CustomColors.kWhiteTextColor,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CustomSpaces.verticalSpace(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ButtonWidget(
                  label: "Make a Payment",
                  fontSize: 14.sp,
                  onPressed: () {},
                ),
                CustomSpaces.verticalSpace(height: 15.h),
                ButtonWidget(
                  label: "Report an Issue",
                  fontSize: 14.sp,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Divider(
            color: CustomColors.kContainerBackgroundColor,
            thickness: 8.0.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transactions",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: CustomColors.kBoldTextColor,
                      ),
                ),
                CustomSpaces.verticalSpace(height: 15.h),
                TransactionCard(
                  title: "Paid for a Token",
                  subTitle: "0928-3827-1983-2389",
                  icon: Icons.token,
                  price: 19.99,
                  onTap: () {},
                ),
                CustomSpaces.verticalSpace(height: 15.h),
                TransactionCard(
                  title: "Paid for a Token",
                  subTitle: "0928-3827-1983-2389",
                  icon: Icons.token,
                  price: 4.99,
                  onTap: () {},
                ),
                CustomSpaces.verticalSpace(height: 15.h),
                TransactionCard(
                  title: "Paid for a Connection fee",
                  subTitle: "10923 Zimra Park",
                  icon: Icons.power_sharp,
                  price: 200,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
