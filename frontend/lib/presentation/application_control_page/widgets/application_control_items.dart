import 'package:flutter/material.dart';

class ApplicationControlItems extends StatelessWidget {
  const ApplicationControlItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Expanded(
      child: Center(
        child: Text("Antragswesen", style: themeData.textTheme.titleLarge),
      ),
    );
  }
}
