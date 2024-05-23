import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';
import 'package:flutter/material.dart';

class ServiceLgCard extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  final String title;
  final String subTitle;
  const ServiceLgCard({
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
        height: 80,
        width: 60,
        decoration: BoxDecoration(
          color: CustomColors.kContainerBackgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Icon(
            icon,
            color: CustomColors.kDarkSurfaceColor,
            size: 32,
          ),
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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
        Icons.arrow_forward_ios,
        color: CustomColors.kIconColor,
        size: 28,
      ),
    );
  }
}
