import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyServiceCard extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final String title;
  final String subTitle;
  const EmergencyServiceCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 80.h,
        width: 60.w,
        decoration: BoxDecoration(
          color: CustomColors.kContainerBackgroundColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Icon(
            icon,
            color: CustomColors.kDarkSurfaceColor,
            size: 32.sp,
          ),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: CustomColors.kBoldTextColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
          CustomSpaces.verticalSpace(),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: CustomColors.kIconColor,
        size: 28.sp,
      ),
    );
  }
}
