import 'package:flutter/material.dart';

class SettingsCustomCard extends StatelessWidget {
  final String cardTitle;
  final String cardText;
  final Widget widget;
  final Icon customIcon;

  const SettingsCustomCard(
      {Key? key,
      required this.cardTitle,
      required this.cardText,
      required this.customIcon,
      required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Center(
      child: Card(
        elevation: 50,
        shadowColor: themeData.colorScheme.shadow,
        color: themeData.colorScheme.primaryContainer,
        child: Container(
          height: 300,
          constraints: const BoxConstraints(maxWidth: 250),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 0,
                ),
                CircleAvatar(
                    backgroundColor: themeData.colorScheme.primary,
                    radius: 45,
                    child: customIcon),
                const SizedBox(
                  height: 30,
                ),
                Divider(
                  color: themeData.colorScheme.tertiary,
                  height: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  cardTitle,
                  style: themeData.textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cardText,
                  textAlign: TextAlign.center,
                  style: themeData.textTheme.bodyLarge,
                ),
                const Spacer(),
                widget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
