import 'package:flutter/material.dart';
import 'package:hourhero/presentation/core/widgets/page_scaffold.dart';
import 'package:hourhero/presentation/start_page/widgets/custom_clock.dart';

class StartPageItems extends StatelessWidget {
  const StartPageItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
        title: "Guten Morgen Herr Albrecht",
        widget: CustomClock(),
    );
  }
}
