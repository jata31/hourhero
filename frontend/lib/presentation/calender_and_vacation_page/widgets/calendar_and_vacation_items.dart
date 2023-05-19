import 'package:flutter/material.dart';

class CalendarAndVacationItems extends StatelessWidget {
  const CalendarAndVacationItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Expanded(
        child: Center(
          child: Text(
            "Kalender & Urlaub",
            style: themeData.textTheme.titleLarge,
          ),
        )
    );
  }
}
