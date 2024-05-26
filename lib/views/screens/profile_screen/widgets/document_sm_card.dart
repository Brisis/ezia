import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentSmCard extends StatelessWidget {
  final String imageUrl;
  final Function()? onTapEdit;
  final Function()? onTapView;
  final Function()? onTapDelete;
  final String title;
  final String subTitle;
  const DocumentSmCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
    this.onTapEdit,
    this.onTapView,
    this.onTapDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 80.h,
        width: 60.w,
        decoration: BoxDecoration(
          color: CustomColors.kContainerBackgroundColor,
          borderRadius: BorderRadius.circular(8.r),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              CustomColors.kDarkSurfaceColor.withOpacity(0.3),
              BlendMode.darken,
            ),
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
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTapEdit,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.kBorderColor,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Icon(
                Icons.edit,
                color: CustomColors.kIconColor,
                size: 18.sp,
              ),
            ),
          ),
          CustomSpaces.horizontalSpace(width: 15),
          GestureDetector(
            onTap: onTapDelete,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.kBorderColor,
                ),
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Icon(
                Icons.delete,
                color: CustomColors.kIconColor,
                size: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
