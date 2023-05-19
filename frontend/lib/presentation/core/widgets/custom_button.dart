import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final Function callback;
  final Icon? icon;
  const CustomButton(
      {Key? key,
      required this.text,
      required this.callback,
      required this.color,
      required this.textcolor,
      this.icon})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(90),
      onTap: () {
        widget.callback();
      },
      onHover: (hovering) {
        setState(() => isHovering = hovering);
      },
      mouseCursor: MaterialStateMouseCursor.clickable,
      child: Container(
        height: 40,
        width: 250,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(90),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) ...{
                widget.icon!,
                const SizedBox(
                  width: 10,
                )
              },
              Text(
                widget.text,
                style: TextStyle(fontSize: 15, color: widget.textcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
