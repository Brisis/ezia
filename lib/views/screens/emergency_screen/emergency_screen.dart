import 'package:ecity/views/screens/emergency_screen/widgets/item_card.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:ecity/views/widgets/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyScreen extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(
      builder: (context) => const EmergencyScreen(),
    );
  }

  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        elevation: 0.5,
        iconTheme: IconThemeData(color: CustomColors.kIconColor),
        title: Text(
          "Emergency Service",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: CustomColors.kBoldTextColor,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150.h,
            decoration: BoxDecoration(
              color: CustomColors.kContainerBackgroundColor,
              image: DecorationImage(
                image: const AssetImage("assets/images/eme.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  CustomColors.kDarkSurfaceColor.withOpacity(0.7),
                  BlendMode.darken,
                ),
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                child: SearchBox(
                  onSubmitted: (value) {},
                ),
              ),
            ),
          ),
          CustomSpaces.verticalSpace(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: ItemCard(
                    title: numbers[index].title,
                    subTitle: numbers[index].subTitle,
                    number: numbers[index].number,
                    icon: numbers[index].icon,
                    onTap: () {},
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List<Emergency> numbers = const [
  Emergency(
    title: "Ambulance",
    subTitle: "Medical Emegencies",
    number: "994",
    icon: Icons.emergency,
  ),
  Emergency(
    title: "Police",
    subTitle: "Crime and Security",
    number: "112",
    icon: Icons.local_police,
  ),
  Emergency(
    title: "Child Welfare",
    subTitle: "Abuse against Children",
    number: "012",
    icon: Icons.child_care,
  ),
];

class Emergency {
  final IconData icon;
  final String title;
  final String subTitle;
  final String number;
  const Emergency({
    required this.title,
    required this.icon,
    required this.subTitle,
    required this.number,
  });
}
