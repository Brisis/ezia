import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 160.w,
            height: 150.h,
            decoration: BoxDecoration(
              color: CustomColors.kContainerBackgroundColor,
              image: DecorationImage(
                image: const AssetImage("assets/images/econet.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  CustomColors.kDarkSurfaceColor.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          CustomSpaces.verticalSpace(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Econet Wireless",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              CustomSpaces.verticalSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: CustomColors.kSuccessColor,
                          size: 16.sp,
                        ),
                        CustomSpaces.horizontalSpace(width: 3.w),
                        Expanded(
                          child: Text(
                            "2.3%",
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: CustomColors.kWarningColor,
                          size: 16.sp,
                        ),
                        CustomSpaces.horizontalSpace(width: 3.w),
                        Expanded(
                          child: Text(
                            "5%",
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomSpaces.verticalSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timelapse_sharp,
                    color: CustomColors.kIconColor,
                    size: 16.sp,
                  ),
                  CustomSpaces.horizontalSpace(width: 3.w),
                  Expanded(
                    child: Text(
                      "0900 - 1630 Mon-Fri",
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
