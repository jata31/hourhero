import 'package:flutter/material.dart';

class AppBarMenuButton extends StatelessWidget {

  final double buttonHeight;
  final double buttonWidth;

  const AppBarMenuButton({Key? key, required this.buttonHeight, required this.buttonWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      color: themeData.colorScheme.background,
      child: IconButton(
        icon: Icon(Icons.menu, color: themeData.colorScheme.primary,),
        onPressed: () {

        },
      ),
    );
  }
}
