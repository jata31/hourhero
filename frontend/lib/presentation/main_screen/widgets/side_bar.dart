import 'package:flutter/material.dart';
import 'package:hourhero/presentation/application_control_page/application_control_page.dart';
import 'package:hourhero/presentation/calender_and_vacation_page/calender_and_vacation_page.dart';
import 'package:hourhero/presentation/settings_page/settings_page.dart';
import 'package:hourhero/presentation/start_page/start_page.dart';
import 'package:routemaster/routemaster.dart';

class SideBar extends StatefulWidget {
  final double sideBarWidth;

  const SideBar({Key? key, required this.sideBarWidth}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  final double sizedBoxHeight = 20;

  final double iconLabelFontSize = 10;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Container(
      width: widget.sideBarWidth,
      color: themeData.colorScheme.secondary,
      child: Column(
        children: [
          SizedBox(
            height: sizedBoxHeight,
          ),
          IconButton(
            onPressed: () {
              Routemaster.of(context).push(StartPage.startPagePath);
            },
            icon: const Icon(Icons.home),
            tooltip: "Startseite",
          ),
          Text(
            "Startseite",
            overflow: TextOverflow.clip,
            style: TextStyle(fontSize: iconLabelFontSize),
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          IconButton(
            onPressed: () {
              Routemaster.of(context)
                  .push(CalendarAndVacationPage.calendarandvacationPath);
            },
            icon: const Icon(Icons.calendar_month),
            tooltip: "Kalender und Urlaub",
          ),
          Center(
              child: Text(
            "Kalender und Urlaub",
            style: TextStyle(fontSize: iconLabelFontSize),
          )),
          SizedBox(
            height: sizedBoxHeight,
          ),
          IconButton(
            onPressed: () {
              Routemaster.of(context)
                  .push(ApplicationControlPage.applicationControlPath);
            },
            icon: const Icon(Icons.timer),
            tooltip: "Antragswesen",
          ),
          Text(
            "Antragswesen",
            style: TextStyle(fontSize: iconLabelFontSize),
          ),
          SizedBox(
            height: sizedBoxHeight,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Routemaster.of(context).push(SettingsPage.settingsPagePath);
            },
            icon: const Icon(Icons.settings),
            tooltip: "Einstellungen",
          ),
          Text(
            "Einstellungen",
            style: TextStyle(fontSize: iconLabelFontSize),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
