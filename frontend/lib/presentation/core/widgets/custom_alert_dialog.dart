import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final Function callbackCancel;

  const CustomAlertDialog({Key? key, required this.callbackCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return AlertDialog(
      title: Text(
        "Wirklich Abbrechen?",
        style: themeData.textTheme.titleMedium,
      ),
      content: Text(
        "Wenn du jetzt abbrichst, werden alle deine Eingaben gelöscht.",
        style: themeData.textTheme.bodyLarge,
      ),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Abbrechen",
                style: TextStyle(color: themeData.colorScheme.tertiary))),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              callbackCancel();
            },
            child: Text(
              "Fortfahren",
              style: TextStyle(color: themeData.colorScheme.tertiary),
            )),
      ],
    );
  }
}
