import 'package:flutter/material.dart';
import 'package:hourhero/presentation/calender_and_vacation_page/widgets/calendar_and_vacation_items.dart';
import 'package:hourhero/presentation/main_screen/main_screen.dart';

class CalendarAndVacationPage extends StatelessWidget {

  static const String calendarandvacationPath =  "/calendarandvacation";

  const CalendarAndVacationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      child: CalendarAndVacationItems(),
    );
  }
}
