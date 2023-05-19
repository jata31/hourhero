import 'package:flutter/material.dart';

class CustomDropdownFormfield extends StatefulWidget {
  final String labelText;
  final List<DropdownMenuItem<String>> dropdownItems;
  const CustomDropdownFormfield({Key? key, required this.labelText, required this.dropdownItems})
      : super(key: key);

  @override
  State<CustomDropdownFormfield> createState() =>
      _CustomDropdownFormfieldState();
}

class _CustomDropdownFormfieldState extends State<CustomDropdownFormfield> {
  String selectedValue = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: DropdownButtonFormField(
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
            labelText: widget.labelText,),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: widget.dropdownItems,
      ),
    );
  }
}
