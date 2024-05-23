import 'package:ecity/views/screens/home_screen/widgets/service_lg_card.dart';
import 'package:ecity/views/screens/home_screen/widgets/service_sm_card.dart';
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
                          "A single portal to all government services",
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
                                title: "Zesa",
                                icon: Icons.electric_bolt,
                                onTap: () {},
                              ),
                              ServiceSmCard(
                                title: "Zinwa",
                                icon: Icons.water_drop,
                                onTap: () {},
                              ),
                              ServiceSmCard(
                                title: "Zimra",
                                icon: Icons.attach_money,
                                onTap: () {},
                              ),
                              ServiceSmCard(
                                title: "Zinara",
                                icon: Icons.local_taxi_sharp,
                                onTap: () {},
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
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
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
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  CustomSpaces.verticalSpace(),
                  ServiceLgCard(
                    title: "Zesa",
                    subTitle: "Pay your electricity bills",
                    icon: Icons.electric_bolt,
                    onTap: () {},
                  ),
                  Divider(
                    color: CustomColors.kContainerBackgroundColor,
                    thickness: 1.5.h,
                  ),
                  ServiceLgCard(
                    title: "Zinwa",
                    subTitle: "Pay your water bills",
                    icon: Icons.water_drop,
                    onTap: () {},
                  ),
                  Divider(
                    color: CustomColors.kContainerBackgroundColor,
                    thickness: 1.5.h,
                  ),
                  ServiceLgCard(
                    title: "Zimra",
                    subTitle: "Pay your tax bills",
                    icon: Icons.attach_money,
                    onTap: () {},
                  ),
                  CustomSpaces.verticalSpace(),
                ],
              ),
            ),
            Divider(
              color: CustomColors.kContainerBackgroundColor,
              thickness: 8.0.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
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
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  CustomSpaces.verticalSpace(),
                ],
              ),
            ),
            Divider(
              color: CustomColors.kContainerBackgroundColor,
              thickness: 8.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Business",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See all",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  CustomSpaces.verticalSpace(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
