import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

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
                image: const AssetImage("assets/images/pres.jpeg"),
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
                "@ZBC",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              CustomSpaces.verticalSpace(),
              Text(
                "President Mnangagwa urges Zimbabweans to uphold peace",
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              CustomSpaces.verticalSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer_sharp,
                    color: CustomColors.kIconColor,
                    size: 16.sp,
                  ),
                  CustomSpaces.horizontalSpace(width: 3.w),
                  Expanded(
                    child: Text(
                      "22 May, 2024",
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
