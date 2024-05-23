import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
      ),
      body: Center(
        child: Text("profile"),
      ),
    );
  }
}
