import 'package:ecity/views/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final String title;
  const ProfileMenuItem({
    super.key,
    required this.title,
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
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontWeight: FontWeight.w500),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18,
        color: CustomColors.kIconColor,
      ),
    );
  }
}
