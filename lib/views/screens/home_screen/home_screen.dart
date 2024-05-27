import 'package:ecity/views/app/app_view.dart';
import 'package:ecity/views/screens/business_screen/businesses_screen.dart';
import 'package:ecity/views/screens/emergency_screen/emergency_screen.dart';
import 'package:ecity/views/screens/home_screen/widgets/business_card.dart';
import 'package:ecity/views/widgets/emergency_service_card.dart';
import 'package:ecity/views/screens/home_screen/widgets/news_card.dart';
import 'package:ecity/views/screens/home_screen/widgets/service_lg_card.dart';
import 'package:ecity/views/screens/home_screen/widgets/service_sm_card.dart';
import 'package:ecity/views/screens/news_screen/news_screen.dart';
import 'package:ecity/views/screens/services_screen/service_screen.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .40,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .30,
                    decoration: BoxDecoration(
                      color: CustomColors.kBorderColor,
                      image: DecorationImage(
                        image: const AssetImage("assets/images/people.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          CustomColors.kDarkSurfaceColor.withOpacity(0.7),
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "e-ZiA",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: CustomColors.kWhiteTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          CustomSpaces.verticalSpace(height: 15.h),
                          Text(
                            "Embrace your digital identity using a verified portal to all government services",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: CustomColors.kWhiteTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 25,
                    right: 25,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: CustomColors.kBackgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.kDarkSurfaceColor,
                            blurRadius: 0.5,
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 25.w,
                                height: 1.5.h,
                                color: CustomColors.kBorderColor,
                              ),
                              CustomSpaces.horizontalSpace(),
                              Text(
                                "Frequently used",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              CustomSpaces.horizontalSpace(),
                              Container(
                                width: 25.w,
                                height: 1.5.h,
                                color: CustomColors.kBorderColor,
                              ),
                            ],
                          ),
                          CustomSpaces.verticalSpace(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ServiceSmCard(
                                title: "Zetdc",
                                icon: Icons.electric_bolt,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    ServiceScreen.route(),
                                  );
                                },
                              ),
                              ServiceSmCard(
                                title: "Zinwa",
                                icon: Icons.water_drop,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    ServiceScreen.route(),
                                  );
                                },
                              ),
                              ServiceSmCard(
                                title: "Zimra",
                                icon: Icons.attach_money,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    ServiceScreen.route(),
                                  );
                                },
                              ),
                              ServiceSmCard(
                                title: "Zinara",
                                icon: Icons.local_taxi_sharp,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    ServiceScreen.route(),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
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
                        "Services",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, AppView.route(index: 1));
                        },
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.kLinkTextColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  CustomSpaces.verticalSpace(),
                  ServiceLgCard(
                    title: "ZETDC",
                    subTitle: "Pay your electricity bills",
                    icon: Icons.electric_bolt,
                    onTap: () {
                      Navigator.push(
                        context,
                        ServiceScreen.route(),
                      );
                    },
                  ),
                  Divider(
                    color: CustomColors.kContainerBackgroundColor,
                    thickness: 1.5.h,
                  ),
                  ServiceLgCard(
                    title: "ZINWA",
                    subTitle: "Pay your water bills",
                    icon: Icons.water_drop,
                    onTap: () {
                      Navigator.push(
                        context,
                        ServiceScreen.route(),
                      );
                    },
                  ),
                  Divider(
                    color: CustomColors.kContainerBackgroundColor,
                    thickness: 1.5.h,
                  ),
                  ServiceLgCard(
                    title: "ZIMRA",
                    subTitle: "Pay your tax bills",
                    icon: Icons.attach_money,
                    onTap: () {
                      Navigator.push(
                        context,
                        ServiceScreen.route(),
                      );
                    },
                  ),
                ],
              ),
            ),
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
                        "News",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, NewsScreen.route());
                        },
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                    height: 260.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 8.0.w),
                          child: const NewsCard(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                        onPressed: () {
                          Navigator.push(context, EmergencyScreen.route());
                        },
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                        onPressed: () {
                          Navigator.push(context, BusinessesScreen.route());
                        },
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
      ),
    );
  }
}
