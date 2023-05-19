import 'package:flutter/material.dart';
import 'package:hourhero/presentation/main_screen/widgets/appbar_menu_button.dart';
import 'package:hourhero/presentation/main_screen/widgets/user_action_bar_item.dart';

class CustomAppBar extends StatelessWidget {

  final double appBarHeight;
  final double appBarMenuWidth;

  const CustomAppBar({Key? key, required this.appBarHeight, required this.appBarMenuWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      children: [
        Container(
          height: appBarHeight,
          width: double.infinity,
          decoration: BoxDecoration(color: themeData.colorScheme.primary,),
          child: Row(
            children: [
              AppBarMenuButton(buttonHeight: appBarHeight, buttonWidth: appBarMenuWidth,),
              const SizedBox(width: 30,),
              Text("Hour Hero", style: themeData.textTheme.headlineSmall),
              const Spacer(),
              const UserActionBarItem(),
            ],
          ),
        ),
        Divider(
          color: themeData.colorScheme.secondary,
          height: 3,
        )
      ],
    );
  }
}
