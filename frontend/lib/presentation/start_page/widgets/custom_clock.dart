import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomClock extends StatefulWidget {
  const CustomClock({super.key});

  @override
  _CustomClockState createState() => _CustomClockState();
}

class _CustomClockState extends State<CustomClock> {
  double? indicatorValue;
  Timer? timer;

  String time() {
    return "${DateTime.now().hour < 10 ? "0${DateTime.now().hour}" : DateTime.now().hour} : ${DateTime.now().minute < 10 ? "0${DateTime.now().minute}" : DateTime.now().minute} : ${DateTime.now().second < 10 ? "0${DateTime.now().second}" : DateTime.now().second} ";
  }

  updateSeconds() {
    timer = Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => setState(() {
              indicatorValue = DateTime.now().second / 60;
            }));
  }

  @override
  void initState() {
    super.initState();
    indicatorValue = DateTime.now().second / 60;
    updateSeconds();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffEEF0F6),
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Colors.black.withOpacity(0.07),
              offset: const Offset(4, 4),
            ),
            BoxShadow(
              blurRadius: 13,
              color: Colors.white.withOpacity(1),
              offset: const Offset(-4, -4),
            ),
            BoxShadow(
              blurRadius: 36,
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(6, 6),
            ),
          ],
        ),
        child: Stack(
          children: [
            Center(
                child: Container(
              margin: const EdgeInsets.all(36.0),
              width: 360,
              height: 360,
                child: Center(
                child: Text(
                  time(),
                  style: GoogleFonts.bungee(
                      fontSize: 40.0,
                      textStyle: const TextStyle(color: Colors.black),
                      fontWeight: FontWeight.normal),
                ),
              ),
            )),
            Center(
              child: CircularPercentIndicator(
                radius: 300.0,
                lineWidth: 8.0,
                percent: indicatorValue!,
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
