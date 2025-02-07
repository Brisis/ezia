import 'package:ecity/views/screens/services_screen/service_screen.dart';
import 'package:ecity/views/screens/services_screen/widgets/service_card.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.kBackgroundColor,
          elevation: 0.5,
          automaticallyImplyLeading: false,
          title: Text(
            "Explore your Services",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: CustomColors.kBoldTextColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
          child: Container(
            decoration: BoxDecoration(
              color: CustomColors.kBackgroundColor,
              border: Border.all(
                color: CustomColors.kBorderColor,
              ),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.compare_arrows,
                      color: CustomColors.kIconColor,
                      size: 24.sp,
                    ),
                    label: Text(
                      "Sort",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 1.5.w,
                  height: 25.h,
                  color: CustomColors.kBorderColor,
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt_sharp,
                      color: CustomColors.kIconColor,
                      size: 24.sp,
                    ),
                    label: Text(
                      "Filter",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: ListView(
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10.w,
                mainAxisSpacing: 10.h,
                crossAxisCount: 2,
                //childAspectRatio: 187.w / 273.14.h,
                children: List.generate(
                  services.length,
                  (index) => ServiceCard(
                    title: services[index].title,
                    icon: services[index].icon,
                    onTap: () {
                      Navigator.push(context, ServiceScreen.route());
                    },
                  ),
                ),
              ),
              CustomSpaces.verticalSpace(height: 50.h),
            ],
          ),
        ));
  }
}

List<Service> services = const [
  Service(
    title: "ZETDC",
    icon: Icons.electric_bolt,
  ),
  Service(
    title: "ZINWA",
    icon: Icons.water_drop,
  ),
  Service(
    title: "ZIMRA",
    icon: Icons.attach_money,
  ),
  Service(
    title: "ZINARA",
    icon: Icons.local_taxi_sharp,
  ),
  Service(
    title: "MOHCC",
    icon: Icons.health_and_safety,
  ),
  Service(
    title: "MoPSE",
    icon: Icons.school,
  ),
  Service(
    title: "ZRP",
    icon: Icons.local_police,
  ),
  Service(
    title: "ZDF",
    icon: Icons.local_play_rounded,
  ),
  Service(
    title: "Births & Death",
    icon: Icons.edit_document,
  ),
];

class Service {
  final IconData icon;
  final String title;
  const Service({
    required this.title,
    required this.icon,
  });
}
