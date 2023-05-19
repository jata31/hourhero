import 'package:flutter/material.dart';
import 'package:hourhero/presentation/core/widgets/page_scaffold.dart';
import 'package:hourhero/presentation/settings_page/widgets/darkmode_switch.dart';
import 'package:hourhero/presentation/settings_page/widgets/settings_custom_card.dart';

class SettingsItems extends StatelessWidget {
  const SettingsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return PageScaffold(
      title: "Einstellungen",
      widget: Column(
        children: [
          Text(
            "Hier kannst die Einstellungen anpassen",
            style: themeData.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 80,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SettingsCustomCard(
                      cardTitle: "Darkmodus",
                      cardText: "Darkmodus an- oder ausschalten",
                      customIcon: Icon(
                        Icons.lightbulb,
                        size: 50,
                        color: themeData.colorScheme.background,
                      ),
                      widget: const DarkModeSwitch()),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
