import 'package:flutter/material.dart';
import 'package:hourhero/presentation/core/page_wrapper/custom_appbar.dart';
import 'package:hourhero/presentation/main_screen/widgets/side_bar.dart';

class MainScreen extends StatelessWidget {

  static const double sideBarWidth = 100;
  static const double appBarHeight = 66;
  final Widget child;

  const  MainScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const CustomAppBar(
          appBarHeight: appBarHeight,
          appBarMenuWidth: sideBarWidth,
        ),
        Expanded(
            child: Row(
              children: [
                const SideBar(
                  sideBarWidth: sideBarWidth,
                ),
                child,
            ],
        )),
      ]),
    );
  }
}
