import 'package:flutter/material.dart';
import 'package:hourhero/application/theme_service/theme_service.dart';
import 'package:provider/provider.dart';

class DarkModeSwitch extends StatelessWidget {
  const DarkModeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Darkmodus aktivieren:", style: themeData.textTheme.bodyLarge,),
            const SizedBox(
              height: 40,
            ),
            Switch(
                activeColor: themeData.colorScheme.tertiary,
                activeTrackColor: themeData.colorScheme.background,
                value: themeService.isDarkModeOn, onChanged: (value) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            })
          ],
        );
      }
    );
  }
}
