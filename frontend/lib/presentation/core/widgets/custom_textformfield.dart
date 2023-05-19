import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool enabled;
  final Function? validator;

  const CustomTextFormField({Key? key, required this.labelText, this.validator, required this.enabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return TextFormField(
      style: const TextStyle(fontSize: 14),
      cursorColor: themeData.colorScheme.background,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: (String? value) => validator!(value),
      enabled: enabled,
    );
  }
}
