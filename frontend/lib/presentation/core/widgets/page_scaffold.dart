import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {

  final String title;
  final Widget widget;

  const PageScaffold({Key? key, required this.widget, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(flex: 2, child: SizedBox()),
            Flexible(
              flex: 6,
              child: Column(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    title,
                    style: themeData.textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  widget,
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            const Flexible(flex: 2, child: SizedBox()),
          ],
        ),
    );
  }
}
