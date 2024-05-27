import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCard extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final String title;
  final String subTitle;
  final String number;
  const ItemCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.number,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      tileColor: CustomColors.kContainerBackgroundColor,
      leading: Icon(
        icon,
        color: CustomColors.kIconColor,
        size: 32.sp,
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
          CustomSpaces.verticalSpace(),
          Text(
            number,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,
        color: CustomColors.kIconColor,
        size: 32.sp,
      ),
    );
  }
}
