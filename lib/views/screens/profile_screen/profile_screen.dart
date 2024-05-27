import 'package:ecity/views/screens/profile_screen/screens/digital_id_screen.dart';
import 'package:ecity/views/screens/profile_screen/widgets/document_card.dart';
import 'package:ecity/views/screens/profile_screen/widgets/profile_menu_item.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/cupertino.dart';
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
        title: Text(
          "Explore your Account",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: CustomColors.kBoldTextColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: CustomColors.kWarningColor,
            ),
          )
        ],
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
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: CustomColors.kContainerBackgroundColor,
                backgroundImage: const AssetImage("assets/images/woman.jpg"),
                maxRadius: 60.r,
              ),
              Positioned(
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: CustomColors.kContainerBackgroundColor,
                    child: Icon(
                      Icons.edit,
                      color: CustomColors.kLinkTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomSpaces.verticalSpace(height: 15),
          Text(
            "Tamara Chirimhanzu",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: CustomColors.kBoldTextColor,
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          CustomSpaces.verticalSpace(),
          Text(
            "12-222222 Y 22",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.center,
          ),
          CustomSpaces.verticalSpace(height: 15),
          ProfileMenuItem(
            title: "Digital Identity",
            icon: Icons.qr_code,
            onTap: () {
              Navigator.push(context, DigitalIdScreen.route());
            },
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Name",
            icon: Icons.person,
            onTap: () {},
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Birthday",
            icon: Icons.calendar_month,
            onTap: () {},
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Gender",
            icon: CupertinoIcons.person_2_fill,
            onTap: () {},
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Phone",
            icon: CupertinoIcons.phone,
            onTap: () {},
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Email",
            icon: Icons.email,
            onTap: () {},
          ),
          CustomSpaces.verticalSpace(height: 10.h),
          ProfileMenuItem(
            title: "Location",
            icon: Icons.location_city,
            onTap: () {},
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
      child: GridView.count(
        shrinkWrap: true,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        crossAxisCount: 2,
        childAspectRatio: 187.w / 233.14.h,
        children: List.generate(
          documents.length,
          (index) => DocumentCard(
            title: documents[index].title,
            subTitle: documents[index].subTitle,
            imageUrl: documents[index].imageUrl,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}

List<Document> documents = const [
  Document(
    title: "National ID",
    subTitle: "12-222222 Y 22",
    imageUrl: "assets/images/nid.webp",
  ),
  Document(
    title: "Birth Certificate",
    subTitle: "CTR 07269-80",
    imageUrl: "assets/images/birth.jpg",
  ),
  Document(
    title: "Driver's Licence",
    subTitle: "00000 AA",
    imageUrl: "assets/images/drivers.png",
  ),
  Document(
    title: "Passport",
    subTitle: "AB000000",
    imageUrl: "assets/images/passport.jpg",
  ),
  Document(
    title: "Qualification",
    subTitle: "CTR 07269-80",
    imageUrl: "assets/images/birth.jpg",
  ),
  Document(
    title: "Marriage Certificate",
    subTitle: "CTR 07269-80",
    imageUrl: "assets/images/birth.jpg",
  ),
  Document(
    title: "Voters Card",
    subTitle: "CTR 07269-80",
    imageUrl: "assets/images/birth.jpg",
  ),
];

class Document {
  final String title;
  final String subTitle;
  final String imageUrl;
  const Document({
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });
}
