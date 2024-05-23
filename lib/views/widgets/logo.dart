import 'package:flutter/material.dart';
import 'package:ecity/views/utils/theme/colors.dart';
import 'package:ecity/views/utils/theme/spaces.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/icons/icon.png",
          width: 40,
          height: 40,
          color: CustomColors.kPrimaryColor,
        ),
        CustomSpaces.horizontalSpace(),
        Text(
          "eZim",
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: CustomColors.kPrimaryColor,
              ),
        ),
      ],
    );
  }
}
