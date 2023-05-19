import 'package:flutter/material.dart';
import 'package:hourhero/presentation/main_screen/main_screen.dart';

import 'widgets/settings_items.dart';

class SettingsPage extends StatelessWidget {

  static const String settingsPagePath =  "/settings";

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      child: SettingsItems(),
    );
  }
}