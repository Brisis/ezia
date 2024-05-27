import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController? phoneNumber;
  final bool isEnabled;
  const CustomPhoneTextField({
    super.key,
    required this.controller,
    this.phoneNumber,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    PhoneNumber number = PhoneNumber(isoCode: 'ZW');
    return InternationalPhoneNumberInput(
      isEnabled: isEnabled,
      onInputChanged: (PhoneNumber number) {
        phoneNumber!.text = number.phoneNumber!;
      },
      onInputValidated: (bool value) {},
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
      ),
      ignoreBlank: true,
      autoValidateMode: AutovalidateMode.onUserInteraction,
      selectorTextStyle: const TextStyle(color: Colors.black),
      initialValue: number,
      textFieldController: controller,
      formatInput: true,
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: true,
      ),
      onSaved: (PhoneNumber number) {
        phoneNumber!.text = number.phoneNumber!;
      },
    );
  }
}
