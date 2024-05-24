import 'package:ecity/views/screens/profile_screen/widgets/document_card.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.kBackgroundColor,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: CustomColors.kContainerBackgroundColor,
                    backgroundImage:
                        const AssetImage("assets/images/woman.jpg"),
                    maxRadius: 20.r,
                  ),
                  CustomSpaces.horizontalSpace(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore your profile",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        "Maria Nyamutanda",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: CustomColors.kBoldTextColor,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomSpaces.horizontalSpace(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: CustomColors.kWarningColor,
              ),
            )
          ],
        ),
        bottom: TabBar(
          controller: tabController,
          labelColor: CustomColors.kBoldTextColor,
          unselectedLabelColor: CustomColors.kLightTextColor,
          indicatorColor: CustomColors.kDarkSurfaceColor,
          tabs: const [
            Tab(
              text: "Personal Information",
            ),
            Tab(
              text: "My Documents",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          PersonalInformationScreen(),
          MyDocumentsScreen(),
        ],
      ),
      floatingActionButton: tabController.index == 1
          ? FloatingActionButton(
              backgroundColor: CustomColors.kBoldTextColor,
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 28.sp,
              ),
            )
          : null,
    );
  }
}

class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: ListView(
        children: const [
          Center(
            child: Text("profile information"),
          ),
        ],
      ),
    );
  }
}

class MyDocumentsScreen extends StatelessWidget {
  const MyDocumentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      child: ListView(
        children: [
          DocumentCard(
            title: "Birth Certificate",
            subTitle: "CTR 07269-80",
            imageUrl: "assets/images/birth.jpg",
            onTapView: () {},
          ),
          CustomSpaces.verticalSpace(height: 15.h),
          DocumentCard(
            title: "National ID",
            subTitle: "12-222222222 Y 22",
            imageUrl: "assets/images/nid.webp",
            onTapView: () {},
          ),
        ],
      ),
    );
  }
}
