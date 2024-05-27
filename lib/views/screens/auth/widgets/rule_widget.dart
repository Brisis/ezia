import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';

class RuleWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const RuleWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.done,
          color: CustomColors.kPrimaryColor,
        ),
        CustomSpaces.horizontalSpace(width: 15),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: CustomColors.kBoldTextColor,
                    fontWeight: FontWeight.bold),
              ),
              CustomSpaces.verticalSpace(height: 5),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
