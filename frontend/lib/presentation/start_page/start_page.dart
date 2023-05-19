import 'package:flutter/material.dart';
import 'package:hourhero/presentation/main_screen/main_screen.dart';
import 'package:hourhero/presentation/start_page/widgets/start_page_items.dart';

class StartPage extends StatelessWidget {
  static const String startPagePath = "/home";

  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      child: StartPageItems(),
    );
  }
}
