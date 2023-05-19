import 'package:flutter/material.dart';

class StartPageItems extends StatelessWidget {
  const StartPageItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Expanded(
        child: Center(
          child: Text(
            "Willkommen Herr Albrecht",
            style: themeData.textTheme.titleLarge,
          ),
        )
    );
  }
}
