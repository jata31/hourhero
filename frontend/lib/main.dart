import 'package:flutter/material.dart';
import 'package:hourhero/application/theme_service/theme_service.dart';
import 'package:hourhero/presentation/application_control_page/application_control_page.dart';
import 'package:hourhero/presentation/calender_and_vacation_page/calender_and_vacation_page.dart';
import 'package:hourhero/presentation/start_page/start_page.dart';
import 'package:hourhero/theme.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_strategy/url_strategy.dart';

import 'presentation/settings_page/settings_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

final routes = RouteMap(routes: {
  '/': (_) => const Redirect('/home'),
  StartPage.startPagePath: (_) => const MaterialPage(child: StartPage()),
  CalendarAndVacationPage.calendarandvacationPath: (_) =>
      const MaterialPage(child: CalendarAndVacationPage()),
  ApplicationControlPage.applicationControlPath: (_) =>
      const MaterialPage(child: ApplicationControlPage()),
  SettingsPage.settingsPagePath: (_) =>
      const MaterialPage(child: SettingsPage()),
});

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp.router(
        routeInformationParser: const RoutemasterParser(),
        routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
        debugShowCheckedModeBanner: false,
        title: "Hour Hero",
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
      );
    });
  }
}
