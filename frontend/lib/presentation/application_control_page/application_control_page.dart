import 'package:flutter/material.dart';
import 'package:hourhero/presentation/application_control_page/widgets/application_control_items.dart';
import 'package:hourhero/presentation/main_screen/main_screen.dart';

class ApplicationControlPage extends StatelessWidget {

  static const String applicationControlPath =  "/applicationcontrol";

  const ApplicationControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      child: ApplicationControlItems(),
    );
  }
}