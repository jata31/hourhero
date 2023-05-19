import 'package:flutter/material.dart';

class UserActionBarItem extends StatelessWidget {
  const UserActionBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Yannic Albrecht"),
            Text(
              "HCP-Technik Mutti",
              style: TextStyle(
                  color: themeData.colorScheme.tertiary, fontSize: 12),
            )
          ],
        ),
        IconButton(
          iconSize: 80,
          onPressed: () {
          },
          icon: CircleAvatar(
            backgroundColor: themeData.colorScheme.background,
          ),
        ),
      ],
    );
  }
}
