import 'package:ecity/views/screens/home_screen/widgets/business_card.dart';
import 'package:ecity/views/screens/home_screen/widgets/emergency_service_card.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCityScreen extends StatelessWidget {
  const MyCityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: Text(
          "Explore your City",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: CustomColors.kBoldTextColor,
                fontWeight: FontWeight.bold,
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
                image: const AssetImage("assets/images/harare.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  CustomColors.kDarkSurfaceColor.withOpacity(0.7),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Text(
                "Harare, Zimbabwe",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: CustomColors.kWhiteTextColor,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CustomSpaces.verticalSpace(),
          Center(
            child: Text(
              "The city that never sleeps",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
          CustomSpaces.verticalSpace(),
          Divider(
            color: CustomColors.kContainerBackgroundColor,
            thickness: 8.0.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 8.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Emergency",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.kLinkTextColor,
                            ),
                      ),
                    ),
                  ],
                ),
                CustomSpaces.verticalSpace(),
                EmergencyServiceCard(
                  title: "Ambulance",
                  subTitle: "994",
                  icon: Icons.emergency,
                  onTap: () {},
                ),
                Divider(
                  color: CustomColors.kContainerBackgroundColor,
                  thickness: 1.5.h,
                ),
                EmergencyServiceCard(
                  title: "Police",
                  subTitle: "112",
                  icon: Icons.local_police,
                  onTap: () {},
                ),
                Divider(
                  color: CustomColors.kContainerBackgroundColor,
                  thickness: 1.5.h,
                ),
                EmergencyServiceCard(
                  title: "Child Welfare",
                  subTitle: "012",
                  icon: Icons.child_care,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Divider(
            color: CustomColors.kContainerBackgroundColor,
            thickness: 8.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 8.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Businesses",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: CustomColors.kLinkTextColor,
                            ),
                      ),
                    ),
                  ],
                ),
                CustomSpaces.verticalSpace(),
                SizedBox(
                  width: double.infinity,
                  height: 250.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 8.0.w),
                        child: const BusinessCard(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
