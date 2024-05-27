import 'package:ecity/views/utils/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final Function(String)? onSubmitted;
  final String? placeholder;
  const SearchBox({
    super.key,
    this.onSubmitted,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoSearchTextField(
        backgroundColor: CustomColors.kContainerBackgroundColor,
        padding: const EdgeInsetsDirectional.fromSTEB(5.5, 12, 5.5, 12),
        placeholder: placeholder,
        prefixIcon: const Icon(
          CupertinoIcons.search,
          size: 16,
        ),
        style: Theme.of(context).textTheme.bodySmall,
        controller: TextEditingController(),
        onSubmitted: onSubmitted,
        autocorrect: false,
      ),
    );
  }
}
